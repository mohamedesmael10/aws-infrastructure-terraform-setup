# Define the Elastic IP for the NAT Gateway
resource "aws_eip" "nat" {
  vpc = true
}

# Define the NAT Gateway
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public.id
  depends_on    = [aws_eip.nat]

  tags = {
    Name = "NAT-Gateway"
  }
}
