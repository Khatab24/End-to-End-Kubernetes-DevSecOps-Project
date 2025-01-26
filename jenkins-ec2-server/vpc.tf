data "aws_vpc" "vpc" {
  id = var.vpc_name
}
data "aws_internet_gateway" "igw" {
  filter {
    name   = "internet-gateway-id"
    values = [var.igw_name]
  }
}

data "aws_subnet" "public-subnet" {
  id = var.subnet_name
}
data "aws_route_table" "rt" {
  route_table_id = var.rt_name
}

resource "aws_route_table_association" "rt-association" {
  route_table_id = data.aws_route_table.rt.id
  subnet_id      = data.aws_subnet.public-subnet.id
}

resource "aws_security_group" "security-group" {
  vpc_id      = var.vpc_name

  description = "Allowing Jenkins, Sonarqube, SSH Access"

  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      description      = "TLS from VPC"
      from_port        = ingress.value
      to_port          = ingress.value
      protocol         = "tcp"
      ipv6_cidr_blocks = ["::/0"]
      cidr_blocks      = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.sg_name  # Use the security group name from the variable
  }
}