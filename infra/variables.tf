
variable "bucketname" {
        type = string
}

variable "vpc_cidr" {}
variable "vpc_vpcname" {}
variable "vpc_igw" {}
variable "sub_subnetname" {}
variable "myroute_cidr" {}
variable "sub_cidr" {}
variable "subnet_name" {}

/*EC2 code */

variable "ec2_ami" {}
variable "ec2_instance_type" {}
variable "ec2_count" {}
variable "ec2_keyname" {}
variable "ec2_name" {}
