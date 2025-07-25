# Test out Aviatrix Egress

aws_infra.tf                    =   create vpc/subnets; toggle for tgw+vpc
aws_spoke.tf                    =   into existing vpc
aws_workloads.tf                =


STEP1 -     Run without avtx-spoke.tf   -  deploys vpc/subnets/nat/workloads
STEP2 -     Deploy_avxspoke = true      -  test with single gw.  WITH  'single_ip_snat = false'   (no change);  toggle to 'true' and see RT changes  egress via spke
STEP3 -     Test with spoke hagw        -  ensure both hagw and hagw_subnet are set
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

#spoke.tf
deploy_avxspoke = false
spoke_attached = false
single_ip_snat = false

# ctl
controller_ip = ""
controller_password = ""
controller_username = ""
```