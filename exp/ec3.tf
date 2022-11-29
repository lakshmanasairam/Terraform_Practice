resource "aws_instance" "web-ec3" {
  ami                       = "ami-0f5e8a042c8bfcd5e"
  instance_type             = "t2.micro"
  count                     = 1
  key_name                  = "NEW_Key_Pair"
  subnet_id		    = "subnet-07f96baa5a22de1ae"
  vpc_security_group_ids    = ["sg-08ef97736bdb30fef"]
  ecs_associate_public_ip_address = "false"
  tags ={
    Name = "Copying shaan"
  } 
}
