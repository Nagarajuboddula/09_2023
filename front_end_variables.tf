
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