/*EC2 code */

resource "aws_instance" "sai_ec2" {
  ami                       = var.ec2_ami
  instance_type             = var.ec2_instance_type
  count                     = var.ec2_count
  key_name                  = var.ec2_keyname
  subnet_id                 = var.sub_id
        tags ={
          Name              = var.ec2_name
        }
}
