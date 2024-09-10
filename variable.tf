variable "ec2_ami" {
  description = "The AMI ID for the EC2 instances"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
}

variable "availability_zone" {
  description = "The AWS availability zone for the subnets"
  type        = string
}

variable "allow_ssh_from_cidr" {
  description = "CIDR block to allow SSH access"
  type        = string
}