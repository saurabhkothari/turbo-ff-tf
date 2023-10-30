provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-067d1e60475437da2"
  instance_type = "t3a.micro"
  key_name      = "turbo-saurabh"

  tags = {
    Name = "turbo-ff-sample" 
  }
}

output "instance_ip" {
  value = aws_instance.example.public_ip
}
