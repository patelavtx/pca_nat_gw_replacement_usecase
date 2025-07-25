# test spoke

module "spoke_aws_1" {
  count            = var.deploy_avxspoke ? 1 : 0
  source           = "terraform-aviatrix-modules/mc-spoke/aviatrix"
  version          = "1.6.10"
  cloud            = "AWS"
  region           = "us-east-2"
  account          = "AWS-proj"
  name             = "awsspoke-test1"
  use_existing_vpc = "true"
  vpc_id           = aws_vpc.default[0].id
  gw_subnet        = aws_subnet.public_vpc1[0].cidr_block
  #hagw_subnet      = aws_subnet.public_vpc1[1].cidr_block
  transit_gw       = "non-existent-gw"
  attached         = var.spoke_attached
  ha_gw            = false                  # true by default
  single_ip_snat   = var.single_ip_snat
  instance_size    = "t3.medium"
  # included_advertised_spoke_routes = "10.201.1.0/24, 10.210.0.0/24"
  tags = { tag1 = "spokesubnet-test", tag2 = "testenv" }
  #cidr            = "10.19.0.0/24"
  #subnet_pairs = "3"
}


