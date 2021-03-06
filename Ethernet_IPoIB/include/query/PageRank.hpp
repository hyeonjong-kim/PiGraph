#ifndef PAGERANK_H
#define PAGERANK_H

#include <cmath>

#include "Vertex.hpp"


class PageRank : public Vertex<double, double, double, int> {
    public:
        
        PageRank(int vertex_id, int out_edge, int in_edge, map<int, queue<double>>* _messsage_addr, tcp* _t, int host_num, mutex* socketmu);
        ~PageRank();
        
        void Compute();
};

#endif