
variable "frontend_ec2_ami" {
description = "AMI to use for instance creation"
type = string
}

variable "frontend_key_name" {
description = "Instance type will be used for instance creation"
type = string
}

variable "frontend_instance_tags" {
description = "A map of tags to add to resource"
type = map(string)
}

variable "frontend_ec2_instance_type" {
description = "Instance type will be used for instance creation"
type = string
}

variable "frontend_sg_description" {
description = "Description of security group"
type = string
default = "Security Group Managed by Terraform"
}

variable "frontend_sg_ingress_with_cidr_blocks" {
description = "list of ingress rules with cidr blocks to be allowed"
type = list(map(string))
default = []
}

variable "frontend_sg_egress_with_cidr_blocks" {
description = "list of egress rules with cidr blocks to be allowed"
type = list(map(string))
default = []
}