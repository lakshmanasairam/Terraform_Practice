module "s3" {
	source = "/root/mymodules/s3"
	bucketname = "sai-28-11-1stbucket"
}

module "vpc" {
	source = "/root/mymodules/vpc"
	vpc_cidr ="10.40.0.0/16"
	vpc_vpcname = "saivpc1"
	vpc_igw = "my-1st-igw"
	sub_subnetname ="sai_route"
	myroute_cidr ="0.0.0.0/0"
	sub_cidr = "10.40.13.0/24"
	subnet_name = "sai_subnet"
}

module "ec2" {
	source = "/root/mymodules/ec2"
	ec2_ami = "ami-0f5e8a042c8bfcd5e"
	ec2_instance_type = "t2.micro"
	ec2_count = "1"
	ec2_keyname = "NEW_Key_Pair"
	ec2_name        = "sai_ec2"
	sub_id		= module.vpc.subnetid

}
