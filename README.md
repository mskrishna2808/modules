## vpc & ec2 module

# VPC Module

```hcl
module "project-vpc" {
  source = "git::https://github.com/mskrishna2808/modules.git?ref=1.0.0"

  aws_env = "dev"
  vpc_cidr_block = "10.100.0.0/16"
  vpc_name = "dev-vpc"
  subnet_1_cidr_block = "10.100.0.0/17"
  subnet_1_name = "dev-subnet"
  aws_vpc_sg = "dev-sg"
  aws_vpc_rt = "dev-rt"
  aws_vpc_igw = "dev-igw"
}
```

# VPC & EC2 Module

```hcl
module "project-vpc-ec2" {
  source = "git::https://github.com/mskrishna2808/modules.git?ref=2.0.0"

  aws_env = "dev"
  vpc_cidr_block = "10.100.0.0/16"
  vpc_name = "dev-vpc"
  subnet_1_cidr_block = "10.100.0.0/17"
  subnet_1_name = "dev-subnet"
  aws_vpc_sg = "dev-sg"
  aws_vpc_rt = "dev-rt"
  aws_vpc_igw = "dev-igw"

  ami = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"
  keypair_name = "lab_keypair"
}
```