vpc module

```hcl
module "project-vpc" {
  source = "git::https://github.com/mskrishna2808/modules.git" #?ref=1.0.0

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