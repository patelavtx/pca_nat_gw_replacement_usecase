# Test out Aviatrix Egress



## Example of TFVARS

```
aviatrix_aws_account_name      = "aws-avx"
aws_region                     = "us-east-2"
deploy_aws_tgw                 = false
deploy_aviatrix_transit        = false
deploy_aws_workloads           = true
deploy_avx_egress_gateways     = true
enable_nat_avx_egress_gateways = false
deploy_avx_egress_policy       = false
deploy_dfw_egress_policy       = true
avx_gateway_size               = "t3.small"
number_of_azs                  = 2

# ctl
controller_ip = ""
controller_password = ""
controller_username = ""
```