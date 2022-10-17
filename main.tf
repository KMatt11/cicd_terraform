# ---- root/main.tf

module "vpc" {
  source   = "./vpc"
  vpc_cidr = "10.0.0.0/16"
  ext_ip   = "0.0.0.0/0"
  pb_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
}

module "ec2" {
  source = "./ec2"
  fc_pb_sg  = module.vpc.fc_pb_sg
  fc_pb_sn  = module.vpc.fc_pb_sn
  key    = "TTPKey"
  #pt_sg  = module.vpc.pt_sg
  #pt_sn  = module.vpc.pt_sn
  #alb_tg = module.lb.alb_tg
}