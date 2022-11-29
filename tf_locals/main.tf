terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.40.0"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer1-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDb6f/oBxxPEE80CZmpgl8zLL8boaVkatP+SiVL0mGEPD4VFyRSxakKIEnROlIbQ6QsSOV3I0eY2gfvgdlBuRQ8anZ93D5cJsCDqLcSBW7n2k23d8RRgZJkYM6wG5ntE731wVWczk3AZDSN9TQYgYWgZP0R6QlVGvMZPdib1e8bKcY6FoqcMCBIbEqT8cK7ncg3amfbiKNA0C/ePHj4pznLyALA0L14K0dGlhju6MnPCQcMkeoUZWNlLB97FoHBna/oUA800selYL0DzOKdTlYyRIr9kaloyqxwhAKz5KoImSbSXxalrsv8ufVNz8tAb09s3oiXpzV8tJN1JpARFY4R imported-openssh-key"
}
