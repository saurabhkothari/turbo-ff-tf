variable "aws_region" {
  description = "The AWS region where the EC2 instance will be created."
  type        = string
}

variable "ami_id" {
  description = "The ID of the Amazon Machine Image (AMI) to use for the EC2 instance."
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance to create."
  type        = string
}

variable "key_name" {
  description = "The name of the EC2 Key Pair to associate with the instance for SSH access."
  type        = string
}
