resource "aws_instance" "web-ec2" {
  ami                       = "ami-0f5e8a042c8bfcd5e"
  instance_type             = "t2.micro"
  count                     = 2
  key_name                  = "NEW_Key_Pair"
  vpc_security_group_ids    = ["sg-04b32524deab6d429"]
  /*tags ={
    Name = "Copying shaan"
  } */
  tags ={
    Name = element(var.server_names,count.index)
  }
}
