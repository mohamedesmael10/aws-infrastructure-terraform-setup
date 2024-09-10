ec2_ami = "ami-0e86e20dae9224db8"
vpc_cidr              = "10.0.0.0/16"
public_subnet_cidr    = "10.0.1.0/24"
private_subnet_cidr   = "10.0.2.0/24"
availability_zone     = "us-east-1a"  # Adjust as necessary
allow_ssh_from_cidr   = "0.0.0.0/0"  # Allows SSH from any IP address