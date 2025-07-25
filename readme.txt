


################# IF time can look at this to understand why ? #################################################
## Jul 24th > tested with guacamole server behind ELB,  that is fine, but unable to make connection via LB.  
              Perhaps due to EIP associated taking IGW and not via NATgw and/or LB  (the prvate workloads are fine)
              Healthcheck all good and passes on port 80.   ELB:8080 >  Guaca:80
              *** Anyway -  guaca EIP access is fine, and workloads via ELB ***
              *** variable 'guaca_elb' used to enable/disable  - currently disabled (as not working via LB)


## Jul 11th >> tested against AEF and YAML (NATerminator), works fine.  ** Used AWS controller  for the migration testing **s

Jul 8th >>   Tested ok,   next to test out using NATerminator as the migration tool ***    

["${chomp(data.http.myip.response_body)}/32"]


#ERROR1         : FiX using 'owners' or 'image_id' filter 
#                 e.g owners = ["137112412989"]  # Official Amazon Linux owner ID
#                 same for Windows vms

 Error: Most Recent Image Not Filtered
│ 
│   with data.aws_ami.amazon-linux-2,
│   on aws_workloads.tf line 112, in data "aws_ami" "amazon-linux-2":
│  112: data "aws_ami" "amazon-linux-2" {
│ 
│ "most_recent" is set to "true" and results are not filtered by owner or image ID. With this configuration, a third party may introduce a new image which will be returned by this data source. Filter by owner or image ID to
│ avoid this possibility.


#ERROR2                Guacamole - Error: Your query returned no results. Please change your search criteria and try again.

bitnami-guacamole-1.5.5-1-r01-linux-debian-12-x86_64-hvm-ebs





=================================================================
# Apr15th -   Test again, adding conditions for spokeha deployment.
-  elb-dns-name  -   vpc1 -az1  and port 81 = vcp1 -az2

- Step 2 -  add single spoke :  >  ENABLE SNATIP on spoke >   private subnet RT default updated to point to spoke eni and not NAT gw

*** Added SNATIP config in mc-spoke module ***





# Apr1st - Added spoke.tf , enabling SNAT needed to be done manually, the SNAT module doesn't support snatip mode for the RTs to update 
           #  Tested module out 

#  Mar31st 2025>     Result:  deprecated from aws provider v3.74.0  - use 'domain = vpc'

(A)
```
Plan: 33 to add, 0 to change, 0 to destroy.
╷
│ Warning: Argument is deprecated
│ 
│   with aws_eip.natgws,
│   on aws_infra.tf line 142, in resource "aws_eip" "natgws":
│  142:   vpc   = true
│ 
│ vpc is deprecated. Use domain instead.
│ 
│ (and 3 more similar warnings elsewhere)
╵

```


(B)      -  RESULT: - check image  aws ec2 describe-images --owners 979382823631 --filters "Name=name,Values=bitnami-guacamole-*" --query "Images[*].{ID:ImageId,Name:Name}" --region us-east-1 
```

│ Error: Your query returned no results. Please change your search criteria and try again.
│ 
│   with data.aws_ami.guacamole,
│   on aws_workloads.tf line 144, in data "aws_ami" "guacamole":
│  144: data "aws_ami" "guacamole" {
```
