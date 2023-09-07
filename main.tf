resource "aws_instance" "my_EC2" {
  ami           = var.my_ami
  instance_type = var.instancetype
  tags = {
    Name = "HelloWorld"
  }
  subnet_id = var.my_subnet
  vpc_security_group_ids = [var.sg_id]
}