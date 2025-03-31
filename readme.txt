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