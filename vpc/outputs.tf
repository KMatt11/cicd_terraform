# ---- vpc/outputs.tf

output "vpc_id" {
  value = aws_vpc.kp_vpc.id
}
output "kp_pb_sg" {
  value = aws_security_group.kp_pb_sg.id
}

output "kp_pb_sn" {
  value = aws_subnet.kp_pb_sn[*].id
}