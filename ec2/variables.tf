# --- ec2/variables.tf

variable "webserver_type" {
  type    = string
  default = "t3.micro"
}

variable "kp_pb_sg" {}
#variable "pt_sg" {}
#variable "pt_sn" {}
variable "kp_pb_sn" {}
variable "key" {}