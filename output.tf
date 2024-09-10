output "public-subnet" {
  value = aws_subnet.subnets["public-subnet"].id
}

output "private-subnet" {
  value = aws_subnet.subnets["private-subnet"].id
}