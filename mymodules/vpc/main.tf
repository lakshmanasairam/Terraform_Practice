 /* VPC code */

resource "aws_vpc" "saivpc" {
  cidr_block = var.vpc_cidr

   tags = {
    Name = var.vpc_vpcname
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.saivpc.id

  tags = {
    Name = var.vpc_igw
  }
}

resource "aws_route_table" "myroute" {
  vpc_id = aws_vpc.saivpc.id

  route {
    cidr_block = var.myroute_cidr
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = var.sub_subnetname
  }
}

resource "aws_subnet" "mysubnet" {
  vpc_id     = aws_vpc.saivpc.id
  cidr_block = var.sub_cidr

  tags = {
    Name = var.subnet_name
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.mysubnet.id
  route_table_id = aws_route_table.myroute.id
}
