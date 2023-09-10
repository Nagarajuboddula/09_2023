
variable "frontend_ec2_ami" {
description = "AMI to use for instance creation"
type = string
}

variable "frontend_key_name" {
description = "Instance type will be used for instance creation"
type = string
}
/*
variable "frontend_aws_key_pair" {
description = "Instance type will be used for instance creation"
type = string
}*/

variable "frontend_ec2_instance_type" {
description = "Instance type will be used for instance creation"
type = string
}