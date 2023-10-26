provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = var.instance_name  # Custom name for the EC2 instance
  }
}

output "instance_ip" {
  value = aws_instance.example.public_ip
}
