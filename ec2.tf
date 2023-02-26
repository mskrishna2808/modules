resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.keypair_name
  vpc_security_group_ids = [aws_default_security_group.default.id]
  subnet_id              = aws_subnet.subnet-1.id
#   user_data              = file("applications.sh")
  count                  = 1

  tags = {
    Name = "${var.aws_env}-${var.vpc_name}-server-1"
  }
}
