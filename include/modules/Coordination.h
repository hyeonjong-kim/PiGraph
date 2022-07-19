#include <iostream>
#include <vector>
#include <string>
#include <map>
#include <algorithm>
#include <mutex>

#include "../zk/zkTools.h"

class Coordination{

    private:
        zkTools zktools;
        zhandle_t* zh;
        vector<string> workerManagers;
        map<string, char*> resourceBuffer_CPU;
        map<string, char*> resourceBuffer_GPU;
        vector<pair<string, double>> resourceSort_CPU;
        vector<pair<string, double>> resourceSort_GPU;
        mutex mu;

    public:
        Coordination();
        ~Coordination();
        void setResourceMonitoring(string zooHost, vector<string> workerManagers);
        void resourceMonitoring_CPU();
        void resourceMonitoring_GPU();
        void executionQuery_CPU(int numWorker, string jobId, string query);
        void executionQuery_GPU(int numWorker, string jobId, string query);
};
