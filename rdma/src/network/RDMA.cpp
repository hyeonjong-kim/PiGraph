#include "RDMA.hpp"

RDMA::RDMA(tcp* _t){
    this->t = _t;
    this->context = this->CreateContext();
    this->protection_domain = ibv_alloc_pd(this->context);
    this->cq_size = 0x10;
    this->completion_queue = ibv_create_cq(this->context, this->cq_size, nullptr, nullptr, 0);
    this-> qp = this->CreateQueuePair(this->protection_domain, this->completion_queue);
    this->mr = this->RegisterMemoryRegion(this->protection_domain, this->recv_msg, sizeof(recv_msg));
    this->lid = this->GetLocalId(this->context, PORT);
    this->qp_num = this->GetQueuePairNumber(this->qp);
}

RDMA::RDMA(){

}

void RDMA::setInfo(tcp* _t){
  this->t = _t;
  this->context = this->CreateContext();
  this->protection_domain = ibv_alloc_pd(this->context);
  this->cq_size = 0x10;
  this->completion_queue = ibv_create_cq(this->context, this->cq_size, nullptr, nullptr, 0);
  this-> qp = this->CreateQueuePair(this->protection_domain, this->completion_queue);
  this->mr = this->RegisterMemoryRegion(this->protection_domain, this->recv_msg, sizeof(recv_msg));
  this->lid = this->GetLocalId(this->context, PORT);
  this->qp_num = this->GetQueuePairNumber(this->qp);
}

RDMA::~RDMA(){

}

template <typename T> 
T FromString (const std::string &Text)
{
    std::stringstream ss(Text);
    void * result;
    ss >> result;
    return (T)result;
}

struct ibv_context* RDMA::CreateContext() {
    
    int ret;

    ret = ibv_fork_init();
    if (ret) {
        fprintf(stderr, "Failure: ibv_fork_init (errno=%d)\n", ret);
        exit(EXIT_FAILURE);
    }

    struct ibv_device **dev_list;
    dev_list = ibv_get_device_list(NULL);

    if (!dev_list) {
        int errsave = errno;
        fprintf(stderr, "Failure: ibv_get_device_list (errno=%d)\n", errsave);
        exit(EXIT_FAILURE);        
    }

    struct ibv_context *context;

    if (dev_list[0]) {
        struct ibv_device *device = dev_list[0];
        context = ibv_open_device(device);
        assert(context);
        
    }
  return context;
}

struct ibv_qp* RDMA::CreateQueuePair(struct ibv_pd* pd, struct ibv_cq* cq) {
  struct ibv_qp_init_attr queue_pair_init_attr;
  memset(&queue_pair_init_attr, 0, sizeof(queue_pair_init_attr));
  queue_pair_init_attr.qp_type = IBV_QPT_RC;
  queue_pair_init_attr.sq_sig_all = 1;       
  queue_pair_init_attr.send_cq = cq;         
  queue_pair_init_attr.recv_cq = cq;         
  queue_pair_init_attr.cap.max_send_wr = 1;  
  queue_pair_init_attr.cap.max_recv_wr = 1;  
  queue_pair_init_attr.cap.max_send_sge = 1; 
  queue_pair_init_attr.cap.max_recv_sge = 1; 

  return ibv_create_qp(pd, &queue_pair_init_attr);
}

bool RDMA::ChangeQueuePairStateToInit(struct ibv_qp* queue_pair) {
  struct ibv_qp_attr init_attr;
  memset(&init_attr, 0, sizeof(init_attr));
  init_attr.qp_state = ibv_qp_state::IBV_QPS_INIT;
  init_attr.port_num = PORT;
  init_attr.pkey_index = 0;
  init_attr.qp_access_flags = IBV_ACCESS_LOCAL_WRITE | IBV_ACCESS_REMOTE_READ | IBV_ACCESS_REMOTE_WRITE;

  return ibv_modify_qp(queue_pair, &init_attr, IBV_QP_STATE | IBV_QP_PKEY_INDEX | IBV_QP_PORT | IBV_QP_ACCESS_FLAGS) == 0 ? true : false;
}

bool RDMA::ChangeQueuePairStateToRTR(struct ibv_qp* queue_pair, int ib_port, uint32_t destination_qp_number, uint16_t destination_local_id) {
  struct ibv_qp_attr rtr_attr;
  memset(&rtr_attr, 0, sizeof(rtr_attr));
  rtr_attr.qp_state = ibv_qp_state::IBV_QPS_RTR;
  rtr_attr.path_mtu = ibv_mtu::IBV_MTU_1024;
  rtr_attr.rq_psn = 0;
  rtr_attr.max_dest_rd_atomic = 1;
  rtr_attr.min_rnr_timer = 0x12;
  rtr_attr.ah_attr.is_global = 0;
  rtr_attr.ah_attr.sl = 0;
  rtr_attr.ah_attr.src_path_bits = 0;
  rtr_attr.ah_attr.port_num = ib_port;
  
  rtr_attr.dest_qp_num = destination_qp_number;
  rtr_attr.ah_attr.dlid = destination_local_id;

  return ibv_modify_qp(queue_pair, &rtr_attr, IBV_QP_STATE | IBV_QP_AV | IBV_QP_PATH_MTU | IBV_QP_DEST_QPN | IBV_QP_RQ_PSN | IBV_QP_MAX_DEST_RD_ATOMIC | IBV_QP_MIN_RNR_TIMER) == 0 ? true : false;
}

uint16_t RDMA::GetLocalId(struct ibv_context* context, int ib_port) {
  ibv_port_attr port_attr;
  ibv_query_port(context, ib_port, &port_attr);
  return port_attr.lid;
}

uint32_t RDMA::GetQueuePairNumber(struct ibv_qp* qp) {
  return qp->qp_num;
}

bool RDMA::ChangeQueuePairStateToRTS(struct ibv_qp* queue_pair) {
  struct ibv_qp_attr rts_attr;
  memset(&rts_attr, 0, sizeof(rts_attr));
  rts_attr.qp_state = ibv_qp_state::IBV_QPS_RTS;
  rts_attr.timeout = 0x12;
  rts_attr.retry_cnt = 7;
  rts_attr.rnr_retry = 7;
  rts_attr.sq_psn = 0;
  rts_attr.max_rd_atomic = 1;

  return ibv_modify_qp(queue_pair, &rts_attr, IBV_QP_STATE | IBV_QP_TIMEOUT | IBV_QP_RETRY_CNT | IBV_QP_RNR_RETRY | IBV_QP_SQ_PSN | IBV_QP_MAX_QP_RD_ATOMIC) == 0 ? true : false;
}

struct ibv_mr* RDMA::RegisterMemoryRegion(struct ibv_pd* pd, void* buffer, size_t size) {
  return ibv_reg_mr(pd, buffer, size, IBV_ACCESS_LOCAL_WRITE | IBV_ACCESS_REMOTE_READ | IBV_ACCESS_REMOTE_WRITE);
}

void RDMA::ExchangeInfo(){
    std::ostringstream oss;
    oss << &(this->recv_msg);
    this->t->SendRDMAInfo(oss.str()+"\n");
    this->t->SendRDMAInfo(to_string(this->mr->length)+"\n");
    this->t->SendRDMAInfo(to_string(this->mr->lkey)+"\n");
    this->t->SendRDMAInfo(to_string(this->mr->rkey)+"\n");
    this->t->SendRDMAInfo(to_string(this->lid)+"\n");
    this->t->SendRDMAInfo(to_string(this->qp_num)+"\n");
    this->RDMAInfo = this->t->ReadRDMAInfo();
}

void RDMA::ConnectRDMA(){
    this->ExchangeInfo();
    this->ChangeQueuePairStateToInit(this->qp);
    this->ChangeQueuePairStateToRTR(this->qp, PORT, stoi(this->RDMAInfo.find("qp_num")->second), stoi(this->RDMAInfo.find("lid")->second));
    this->ChangeQueuePairStateToRTS(this->qp);
    cout << "Connect RDMA based on " << this->t->GetServerAddr() << endl;
}

void RDMA::PostRdmaWrite(struct ibv_qp *qp, struct ibv_mr *mr, void *addr, uint32_t length, string r_addr, string r_key){
  int ret;
  r_addr.erase(r_addr.find_last_not_of(" \n\r\t")+1);

  struct ibv_sge sge = {
      .addr   = (uint64_t)(uintptr_t)addr,
      .length = length,
      .lkey   = mr->lkey,
  };

  struct ibv_send_wr send_wr = {
      .wr_id      = (uint64_t)(uintptr_t)addr,
      .sg_list    = &sge,
      .num_sge    = 1,
      .opcode     = IBV_WR_RDMA_WRITE,
      .imm_data   = rand(),
      .wr = {
        .rdma = {
          .remote_addr = FromString<uint64_t>(r_addr),
          .rkey = stoul(r_key),
        }
      }
  };

  struct ibv_send_wr *bad_wr;
  ret = ibv_post_send(qp, &send_wr, &bad_wr);
  assert(ret == 0);
}

void RDMA::SendMsg(string _msg){
  this->bulk_msg = this->bulk_msg + _msg;
  
  if(this->bulk_msg.back() == 'Q'){
    char send_msg[this->bulk_msg.size()];
    strcpy(send_msg, this->bulk_msg.c_str());
    this->PostRdmaWrite(this->qp, this->mr, send_msg, sizeof(send_msg), this->RDMAInfo.find("addr")->second, RDMAInfo.find("rkey")->second);
    int num_wr = 1;
    struct ibv_wc wc;
    int ret;

    while (num_wr > 0) {
      ret = ibv_poll_cq(this->completion_queue, 1, &wc);

      if (ret == 0)continue; /* polling */

      if (ret < 0) {
        fprintf(stderr, "Failure: ibv_poll_cq\n");
        exit(EXIT_FAILURE);
      }

      if (wc.status != IBV_WC_SUCCESS) {
        fprintf(stderr, "Completion errror\n");
        exit(EXIT_FAILURE);
      }

      switch (wc.opcode) {
        case IBV_WC_SEND:
          printf("poll send wc: wr_id=0x%016" PRIx64 "\n", wc.wr_id);
          break;

        default:
          exit(EXIT_FAILURE);
      }
      num_wr--;        
    }
    this->t->SendCheckmsg();
  }
}

string RDMA::ReadMsg(){
  string s = "";
	while(s.compare("1\n")!= 0){
		s = this->t->ReadCheckMsg();
	}
  
  return this->recv_msg;
}

