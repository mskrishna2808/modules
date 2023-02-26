#===========================================
#               VPC Variables
#===========================================

variable "aws_env" {
}

variable "vpc_cidr_block" {
}

variable "vpc_name" {
}

variable "subnet_1_cidr_block" {
}

variable "subnet_1_name" {
}

variable "aws_vpc_sg" {
}

variable "aws_vpc_rt" {
}

variable "aws_vpc_igw" {
}

#===========================================
#               EC2 Variables
#===========================================

variable "ami" {}          
variable "instance_type" {}
variable "keypair_name" {}     