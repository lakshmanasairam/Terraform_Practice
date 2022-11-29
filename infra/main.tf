 /* s3code */
 
resource "random_id" "server" {
  byte_length = 4
}

resource "aws_s3_bucket" "mys3" {
  bucket = "${var.bucketname}-${random_id.server.hex}"
  tags = {
    Name = "${var.bucketname}-${random_id.server.hex}"
 }
}

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

/*EC2 code */

resource "aws_instance" "sai_ec2" {
  ami                       = var.ec2_ami
  instance_type             = var.ec2_instance_type
  count		            = var.ec2_count
  key_name	     	    = var.ec2_keyname
  subnet_id		    = aws_subnet.mysubnet.id
	tags ={
	  Name 		    = var.ec2_name
	}
}
