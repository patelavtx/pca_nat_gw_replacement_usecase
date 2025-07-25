###################################################################################################################################################################################################

#######################################
####
#### Main Variables Creation
####
#######################################

variable "aws_credentials_path" {
  description = ".aws/credentials"
  default     = "~/.aws/credentials"
}


variable "aviatrix_aws_account_name" {
  description = "Aviatrix AWS Account Name"
}

variable "aws_region" {
  description = "AWS Region"
  default     = "eu-west-2"
}

# variable "aws_key_pair_name" {
#   description = "AWS Key Pair Name"
# }

variable "avx_gateway_size" {
  description = "Instance size for the Aviatrix gateways"
  default = "t3.micro"
  
}

variable "number_of_azs" {
  description = "Number of Availability Zones in each VPC"
  default = 2
}

variable "deploy_avx_egress_gateways" {
  type = bool
  description = "Stage the deployment of Aviatrix Gateways in VPC 1"
  default = true
}

variable "tags" {
  description = "A map of the tags to use for the resources that are deployed."
  type        = map(string)

  default = {
    avxlab = "microseg"
  }
}

# avtx spoke
variable "deploy_avxspoke" {
  type = bool
  description = "avx-spoke"
  default = false
}

variable "spoke_attached" {
  type = bool
  description = "avx-spoke"
  default = false
}

variable "single_ip_snat" {
  type = bool
  description = "avx-spoke"
  default = false
}

###################################################################################################################################################################################################

#######################################
####
#### Booleans Creation
####
#######################################


variable "deploy_aws_tgw" {
  type = bool
  description = "Deploys a second VPC and a TGW to attach to the VPC.  This is to demonstrate seamless integration of Aviatrix Secure Egress into an existing transit architecture."
  default = false
}

variable "deploy_aviatrix_transit" {
  type = bool
  description = "Deploys a second VPC and a TGW to attach to the VPC.  This is to demonstrate seamless integration of Aviatrix Secure Egress into an existing transit architecture."
  default = false
}

variable "deploy_aws_workloads" {
  type = bool
  description = "Deploy workloads in the AWS VPCs for testing connectivity and FQDN filtering."
  default = true
}

variable "deploy_dfw_egress_policy" {
  type = bool
  description = "Deploy a Aviatrix Secure Egress configuration leveraging Egress 2.0."
  default = false
}

variable "deploy_avx_egress_policy" {
  type = bool
  description = "Deploy a Aviatrix Secure Egress configuration leveraging the legacy FQDN Egress policy configuration."
  default = false
}

variable "enable_nat_avx_egress_gateways" {
  type = bool
  description = "Enable NAT on the Aviatrix Egress Gateways"
  default = false
}

#  controllerstuff
variable "controller_ip" {
  description = "ctl"
}

variable "controller_password" {
  description = "ctl"
}

variable "controller_username" {
  description = "ctl"
  default     = "admin"
}



## guaca
variable "guaca_elb" {
  type = bool
  description = "guaca behind elb"
  default = false
}
