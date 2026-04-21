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

  validation {
    condition     = can(cidrhost(var.ssh_ingress_cidr, 0))
    error_message = "ssh_ingress_cidr must be a valid CIDR block, for example 203.0.113.10/32."
  }
}
