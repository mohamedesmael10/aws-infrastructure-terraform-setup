# Define the Public EC2 Instance
resource "aws_instance" "public" {
  ami           = var.ec2_ami
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]   
  key_name      = aws_key_pair.key_pair.key_name


  tags = {
    Name = "public-ec2"
  }
}

# Define the Private EC2 Instance
resource "aws_instance" "private" {
  ami           = var.ec2_ami
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private.id  
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]  
  key_name      = aws_key_pair.key_pair.key_name

  tags = {
    Name = "private-ec2"
  }
}
