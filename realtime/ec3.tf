resource "aws_instance" "web-ec3" {
  ami                       = "ami-0f5e8a042c8bfcd5e"
  instance_type             = "t2.micro"
  count                     = 1
  key_name                  = "NEW_Key_Pair"
  vpc_security_group_ids    = ["sg-0558378594edc789c"]
  tags ={
    Name = "Copying shaan"
  } 
}

resource "aws_security_group" "forwarder" {
  vpc_id		    = "vpc-0a6f7ed3329a71f13"
}
