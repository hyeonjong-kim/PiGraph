#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <sys/time.h>
#include <cstdlib>
#include <netdb.h>
#include <sys/types.h>
#include <sys/sysinfo.h>

#include "PageRank.hpp"
#include "tcp.hpp"
#include "RDMA.hpp"
#include "ThreadPool.hpp"
#include "Parser.hpp"
#include "ResourceChecker.hpp"

int internalBucket;
int externalBucket;
int internalHashFunction(int x){return (x % internalBucket);}
int externalHashFunction(int x){return (x % externalBucket);}

string HostToIp(string host) {
    hostent* hostname = gethostbyname(host.c_str());
    if(hostname)
        return string(inet_ntoa(**(in_addr**)hostname->h_addr_list));
    return {};
}

vector<string> split(string input, char delimiter) {
	vector<string> answer;
    stringstream ss(input);
    string temp;

    while(getline(ss, temp, delimiter))answer.push_back(temp);

    return answer;
}

using namespace argparse;

int main(int argc, const char *argv[]){
	ArgumentParser parser("Pigraph", "Pigraph execution");
	parser.add_argument()
      .names({"-m", "--mutex"})
      .description("mutex number")
      .required(true);
	parser.add_argument()
      .names({"-f", "--filename"})
      .description("file name")
      .required(true);
	parser.add_argument()
      .names({"-n", "--hostnumber"})
      .description("number of host")
      .required(true);
	parser.add_argument()
      .names({"-s", "--superstep"})
      .description("sperstep")
      .required(true);
	parser.add_argument()
      .names({"-p", "--partitioning"})
      .description("partitioning option")
      .required(true);
	parser.enable_help();
	
	auto err = parser.parse(argc, argv);
	if (err) {
		std::cout << err << std::endl;
		return -1;
	}
	
	
	int num_thread = thread::hardware_concurrency();
	int num_mutex = stoi(parser.get<string>("m"));
	string data_file_name = parser.get<string>("f");
	string host_file_name = "../hostfile/hostinfo.txt";
	int num_host = stoi(parser.get<string>("n"));
	int superstep = stoi(parser.get<string>("s"));
	int p_option= stoi(parser.get<string>("p"));
    char delimiter;
	

    if(p_option == 0){
        delimiter = ' ';
    }
    else if(p_option == 1){
        delimiter = '\t';
    }
    else{
        cout << "partitioning option error" << endl;
        return 0;
    }

	char this_host_name[256];
	gethostname(this_host_name, 256);
	string this_host_name_str(this_host_name);
	int host_num = 0;

	ifstream host_file(host_file_name);
	char read_buf[100];
	string read_str;

	for(int i=0; i<num_host; i++){
		host_file.getline(read_buf, 100);
		read_str = read_buf;
		if(this_host_name_str.compare(read_str) == 0){
			break;
		}
		host_num++;
	}
	host_file.close();
	
	struct timeval start = {};
    struct timeval end = {};

	ThreadPool* threadPool = new ThreadPool(num_thread);
	ThreadPool* connectionThread = new ThreadPool(num_host);
	ThreadPool* RDMAconnectionThread = new ThreadPool(num_host);

	map<int, PageRank> pagerank_set;
	mutex mu[num_mutex];
	mutex socketmu[num_host];
	internalBucket = num_mutex;
	externalBucket = num_host;

	tcp *t = new tcp[num_host];
	vector<char[15]> server_ip(num_host);
	
	host_file.open(host_file_name);
	
	for(int i=0; i< num_host; i++){
		host_file.getline(read_buf, 100);
		read_str = read_buf;
		read_str = HostToIp(read_str);
		strcpy(server_ip[i], read_str.c_str());
		t[i].SetInfo(i, 3141592, server_ip[i], num_host, 3141592+host_num);
		t[i].SetSocket();
		connectionThread->EnqueueJob([&t, i](){t[i].ConnectSocket();});
	}

	while(true){
			if(connectionThread->getJobs().empty()){
				while(true){
					if(connectionThread->checkAllThread())break;
				}
				break;
			}
	}

	host_file.close();
    
	RDMA *rdma = new RDMA[num_host];

	cout<< "Read file" <<endl;

	ifstream data_file(data_file_name);
	vector<string> split_line;
	gettimeofday(&start, NULL);
	while(getline(data_file, read_str)){
        split_line = split(read_str, delimiter);

		if(externalHashFunction(stoi(split_line[0])) == host_num){
			if(pagerank_set.count(stoi(split_line[0])) == 1){
				pagerank_set.find(stoi(split_line[0]))->second.AddOutEdge(stoi(split_line[1]));
			}
			else{
				PageRank p(stoi(split_line[0]),stoi(split_line[1]), NULL, rdma, socketmu, num_host);
				pagerank_set.insert(pair<int, PageRank>(stoi(split_line[0]), p));
			}
		}
		if(externalHashFunction(stoi(split_line[1])) == host_num){
			if(pagerank_set.count(stoi(split_line[1])) == 1){
				pagerank_set.find(stoi(split_line[1]))->second.AddInEdge(stoi(split_line[0]));
			}
			else{
				PageRank p(stoi(split_line[1]), NULL, stoi(split_line[0]), rdma, socketmu, num_host);
				pagerank_set.insert(pair<int, PageRank>(stoi(split_line[1]), p));
			}
		}
	}

	gettimeofday(&end, NULL);
	data_file.close();

	double time = end.tv_sec + end.tv_usec / 1000000.0 - start.tv_sec - start.tv_usec / 1000000.0;
	cout << "Time of reading file: " << time << endl;

	for(int i = 0; i < num_host; i++)t[i].SendCheckmsg();
	
	for(int j = 0; j < num_host; j++){
		connectionThread->EnqueueJob([t, j](){
			string s = "";
			while(s.compare("1\n")!= 0){
				s = t[j].ReadCheckMsg();
			}
		});
	}

	while(true){
		if(connectionThread->getJobs().empty()){
			while(true){
				if(connectionThread->checkAllThread())break;
			}
			break;
		}
	}

	cout << "Complete reading file all node" << endl;

	map<int, PageRank>::iterator iter;
	
	map<int, vector<int>> recv_pos;
	int begin_pos = 0;
	int end_pos = 0;
	int buffer_size = 0;
	double** recv_msg = new double*[num_host];

	for(iter=pagerank_set.begin(); iter!=pagerank_set.end();iter++){
		buffer_size += iter->second.GetInEdgeIterator().size();
		end_pos += iter->second.GetInEdgeIterator().size();
		
		iter->second.SetPos(begin_pos, end_pos);

		vector<int> pos;
		pos.push_back(begin_pos);
		pos.push_back(end_pos);
		recv_pos.insert(make_pair(iter->first, pos));
		begin_pos = end_pos;
	}

	for(int i = 0; i < num_host; i++){
		recv_msg[i] = new double[buffer_size]{0.0};
	}

	for(iter=pagerank_set.begin(); iter!=pagerank_set.end();iter++){
		iter->second.SetMsgQue(recv_msg);
	}

	for(int i = 0; i < num_host; i++){
		rdma[i].setInfo(&t[i], recv_msg[i], buffer_size, recv_pos, mu, num_mutex);
		RDMAconnectionThread->EnqueueJob([rdma, i, &t](){
			rdma[i].ConnectRDMA();
		});
		sleep(1);
	}

	while(true){
		if(RDMAconnectionThread->getJobs().empty()){
			while(true){
				if(RDMAconnectionThread->checkAllThread()){
					break;
				}
			}
			break;
		}
	}

	for(int i = 0; i < num_host; i++)t[i].SendCheckmsg();
	
	for(int j = 0; j < num_host; j++){
		connectionThread->EnqueueJob([&t, j](){
			string s = "";
			while(s.compare("1\n")!= 0){
				s = t[j].ReadCheckMsg();
			}
			cout <<  t[j].GetServerAddr() << " is RDMA connection" << endl;
		});
	}

	while(true){
		if(connectionThread->getJobs().empty()){
			while(true){
				if(connectionThread->checkAllThread())break;
			}
			break;
		}
	}

	cout << "Complete all node RDMA setting" << endl;


	int vertex_num = 0;

	for(int i=0; i < num_host; i++)vertex_num += rdma[i].GetVertexNum();
	

	for(iter=pagerank_set.begin(); iter!=pagerank_set.end();iter++){
		iter->second.SetValue(1.0/double(vertex_num));
		iter->second.SetNumVertices(double(vertex_num));
	}

	struct timeval start_query = {};
	struct timeval end_query = {};
	
	cout<< "start graph query" <<endl;
	gettimeofday(&start, NULL);
	for (int i = 0; i < superstep; i++) {
		for(iter=pagerank_set.begin(); iter!=pagerank_set.end();iter++){
			threadPool->EnqueueJob([iter](){iter->second.Compute();});
		}
		
		while(true){
			if(threadPool->getJobs().empty()){
				while(true){
					if(threadPool->checkAllThread())break;
				}
				break;
			}
		}
		
		for(int o = 0; o < num_host; o++){
			connectionThread->EnqueueJob([rdma,o](){rdma[o].SendMsg(2147483647, 0.0);});
		}
		
		while(true){
			if(connectionThread->getJobs().empty()){
				while(true){
					if(connectionThread->checkAllThread())break;
				}
				break;
			}
		}

		for(int o = 0; o < num_host; o++)rdma[o].CheckCommunication();
	}

	gettimeofday(&end, NULL);

	for(int i; i<num_host;i++)t[i].CloseSocket();
	
	for(iter=pagerank_set.begin(); iter!=pagerank_set.end();iter++){
	
		cout << iter->first << ": " <<  iter->second.GetValue() << endl;
	}
	
	for(int o = 0; o < num_host; o++)rdma[o].CloseRDMA();
	

	time = end.tv_sec + end.tv_usec / 1000000.0 - start.tv_sec - start.tv_usec / 1000000.0;
	cout << "toal time: " << time << endl;
	
	return 0;
}
