#include "tcp.hpp"

tcp::tcp(int socket_num, int port, char _server_addr[], int num_host, int _client_port, int num_mu){
    this->port = port + socket_num;
    this->server_addr = _server_addr;
    this->num_host = num_host;
    this->client_port = _client_port;
    this->mu = new mutex[num_mu];
    this->internalBucket = num_mu;
    for (size_t i = 0; i < this->internalBucket; i++)this->send_msg.push_back("");
    
    
}

tcp::tcp(){

}

tcp::~tcp(){
    
}

void tcp::SetInfo(int socket_num, int port, char _server_addr[], int num_host, int _client_port, int num_mu){
    this->port = port + socket_num;
    this->server_addr = _server_addr;
    this->num_host = num_host;
    this->client_port = _client_port;
    this->mu = new mutex[num_mu];
    this->internalBucket = num_mu;
    this->send_msg.reserve(num_mu);
    for (size_t i = 0; i < this->internalBucket; i++)this->send_msg.push_back("");
    
}

void tcp::SetSocket(){
    if ((this->server_socket = socket(PF_INET, SOCK_STREAM, 0)) == 0){
        perror("socket failed");
        exit(EXIT_FAILURE);
    }


    if (setsockopt(this->server_socket, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, &(this->opt), sizeof(this->opt))){
        perror("setsockopt");
        exit(EXIT_FAILURE);
    }
    
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons(this->port);

    if (bind(server_socket, (struct sockaddr *)&address, sizeof(address))<0){
        perror("bind failed");
        exit(EXIT_FAILURE);
    }

    if (listen(server_socket, 1) < 0){
        perror("listen");
        exit(EXIT_FAILURE);
    }

    if ((this->client_sock = socket(AF_INET, SOCK_STREAM, 0)) < 0){
        perror("Socket creation error");
        exit(EXIT_FAILURE);
    }

    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(this->client_port);
   
    if(inet_pton(AF_INET, server_addr, &serv_addr.sin_addr)<=0){
        perror("Invalid address/ Address not supported");
        exit(EXIT_FAILURE);
    }

    if (setsockopt(this->client_sock, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, &(this->opt), sizeof(this->opt))){
        perror("setsockopt");
        exit(EXIT_FAILURE);
    }
}

void tcp::ConnectSocket(){
    thread connect_server([](int& new_socket, int& server_fd, struct sockaddr_in& address, int& addrlen){
        if((new_socket = accept(server_fd, (struct sockaddr *)&address, (socklen_t*)&addrlen))<0){
            perror("accept");
            exit(EXIT_FAILURE);
        }
        else{
           
        }
    }, ref(this->new_socket), ref(this->server_socket), ref(this->address), ref(this->addrlen));
    
    thread connect_client([](int& sock, struct sockaddr_in& serv_addr){
        while(connect(sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0){
          
        }
    }, ref(this->client_sock), ref(this->serv_addr));

    connect_server.join();
    connect_client.join();
}

void tcp::Sendmsg(string& _msg, int vertex_id){
    if(_msg.compare("Q")!=0){
        this->mu[this->internalHashFunction(vertex_id)].lock();
        this->send_msg[this->internalHashFunction(vertex_id)] += _msg;
        this->mu[this->internalHashFunction(vertex_id)].unlock();
    }
    else{
        
        for (size_t i = 0; i < this->internalBucket; i++)
        {
            this->combine_send_msg += this->send_msg[i];
            this->send_msg[i] = "";
        }
    
        this->combine_send_msg += _msg;
        char msg[this->combine_send_msg.size()];
        strcpy(msg, this->combine_send_msg.c_str());
        write(this->client_sock , msg , strlen(msg));
        this->combine_send_msg = "";
    }
}

string tcp::Readmsg(){
    
    this->result = "";
    this->read_char= "";

    while(result.back() != 'Q'){
        bzero(this->buffer, sizeof(this->buffer));
        this->valread = read(this->new_socket , this->buffer, sizeof(this->buffer)-1);
        this->read_char = this->buffer;
        this->result += this->read_char;
    }
    
    this->result=this->result.substr(0, this->result.length()-1);
    return this->result;
}



void tcp::SendCheckmsg(){
    string checkMsg = "1\n";
    char msg[checkMsg.size()];
    strcpy(msg, checkMsg.c_str());
    write(this->new_socket, msg , strlen(msg));
}

string tcp::ReadCheckmsg(){
    this->result="";
    char buf[2];
    
    while(this->result.back() != '\n'){
        bzero(buf, sizeof(buf));
        this->valread = read(this->client_sock , buf, sizeof(buf)-1);
        this->read_char = buf;

        if(this->read_char!=""){
            this->result += this->read_char;
        }
    }
    
    return this->result;
}

void tcp::SendAliveMsg(string _msg){
    if(_msg.compare("Q")!=0){
        this->alive_msg += _msg;
        
    }
    else{
        this->alive_msg += _msg;
        char msg[this->alive_msg.size()];
        strcpy(msg, alive_msg.c_str());
        write(this->new_socket , msg , strlen(msg));
        this->alive_msg="";
    }
}

string tcp::ReadAliveMsg(){
    this->result = "";
    this->read_char = "";
    char buf[2];
    
    while(result.back() != 'Q'){
        bzero(buf, sizeof(buf));
        this->valread = read(this->client_sock , buf, sizeof(buf)-1);
        this->read_char = buf;
        this->result += this->read_char;
    }

    this->result=this->result.substr(0, this->result.length()-1);  
    return this->result;
}

void tcp::ShutdownSocket(){
    shutdown(this->client_sock, SHUT_WR);
}

void tcp::CloseSocket(){
    close(this->client_sock);
    close(this->server_socket);
    close(this->new_socket);
}