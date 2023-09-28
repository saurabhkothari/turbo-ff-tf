resource "aws_instance" "sample" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = var.instance_name
  }
}

variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "instance_name" {}
