data "aws_vpc" "vpc" {
  id = var.vpc_name
}

data "aws_internet_gateway" "igw" {
  filter {
    name   = "internet-gateway-id"
    values = [var.igw_name]
  }
}

data "aws_subnet" "subnet" {
  id = var.subnet_name
}

data "aws_subnet" "public-subnet2" {
  id = var.subnet_name2  
}

data "aws_security_group" "sg-default" {
  id = var.sg_name
}

data "aws_route_table" "rt2" {
  route_table_id = var.rt_name2 
}

resource "aws_route_table_association" "rt-association2" {
  route_table_id = data.aws_route_table.rt2.id
  subnet_id      = data.aws_subnet.public-subnet2.id
}