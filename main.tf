provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
}

output "instance_ip" {
  value = aws_instance.example.public_ip
}
