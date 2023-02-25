resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  instance_tenancy     = "default"

  tags = {
    Name = "${var.aws_env}-${var.vpc_name}"
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_1_cidr_block
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.aws_env}-${var.vpc_name}-${var.subnet_1_name}"
  }
}