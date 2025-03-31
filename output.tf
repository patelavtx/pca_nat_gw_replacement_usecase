output "elb-dns_name" {
  description = "VM Name"
  value = aws_lb.test-machine-ingress[0].dns_name
}

