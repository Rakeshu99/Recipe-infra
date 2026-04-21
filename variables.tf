variable "aws_region" {
  description = "AWS region for recipe webapp infra"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type for the recipe webapp host"
  type        = string
  default     = "t3.micro"
}

variable "ssh_ingress_cidr" {
  description = "CIDR block allowed to SSH into the recipe webapp instance"
  type        = string
}
