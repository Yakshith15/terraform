variable "region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "ap-south-2"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "free-tier-instance"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "root_volume_size" {
  description = "Size of the root EBS volume in GB"
  type        = number
  default     = 8
}

variable "root_volume_type" {
  description = "Type of the root EBS volume"
  type        = string
  default     = "gp2"
}

variable "tags" {
  description = "Additional tags to apply to resources"
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
  }
}
