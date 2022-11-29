output "mypubip"{
	value =aws_instance.web-ec2[1].public_ip
}

output "mypubip1"{
        value =aws_instance.web-ec2[0].public_ip
}

