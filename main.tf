
# Provider declaration and icanhazip.com

terraform {
  required_providers {
    aviatrix = {
      source  = "AviatrixSystems/aviatrix"
      version = "~>3.1"
    }
   aws = {
      source  = "hashicorp/aws"
      #version = "~> 5.0"
    }
    ssh = {
      source = "loafoe/ssh"
    }
  }
}



#change

provider "aviatrix" {
  controller_ip = var.controller_ip
  username      = var.controller_username
  password      = var.controller_password
  skip_version_validation = true

}


provider "aws" {
  #region = var.aws_region
  profile = "atul-basecamp"
}


// Generate random value for the name
resource "random_string" "name" {
  length  = 8
  upper   = false
  lower   = true
  special = false
}




data "http" "myip" {
  url = "http://ipv4.icanhazip.com"
}
