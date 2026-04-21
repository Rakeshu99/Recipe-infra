# Recipe-infra

Terraform infrastructure for the Recipe webapp.

## What this provisions

- AWS provider setup
- Security group for HTTP (80) and SSH (22)
- EC2 instance (Amazon Linux 2023) with Nginx serving a Recipe landing page

## Usage

```bash
terraform init
terraform fmt -check
terraform validate
terraform plan
terraform apply -var="ssh_ingress_cidr=YOUR_IP/32"
```

## Variables

- `aws_region` (default: `us-east-1`)
- `instance_type` (default: `t3.micro`)
- `ssh_ingress_cidr` (**required**) - CIDR allowed to SSH into the instance
