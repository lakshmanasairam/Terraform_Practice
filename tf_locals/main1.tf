variable "subject" {
         default = "terraform"
}

output "mysubjectis" {
         value = var.subject
}

variable "amma" {
         default = "naa chinna koduku lakshman"
}

output "amma"{
         value = var.amma     
}

variable "ln"{
}

output "lastnameis"{
         value = var.ln
}

variable "total_subjects" {
         default=["aws","terraform","shell","python","terraform"]
}

output "totalsubjects" {
         value =var.total_subjects
}
output "totalsubjects1" {
         value =var.total_subjects[1]
}

output "myenv" { 
	 value = local.env
}
