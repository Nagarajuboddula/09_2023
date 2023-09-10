
variable "backend_ec2_ami" {
description = "AMI to use for instance creation"
type = string
}

variable "backend_key_name" {
description = "Instance type will be used for instance creation"
type = string
}

variable "backend_instance_tags" {
description = "A map of tags to add to resource"
type = map(string)
}

variable "backend_ec2_instance_type" {
description = "Instance type will be used for instance creation"
type = string
}





















/*
variable "backend_sg_description" {
description = "Description of security group"
type = string
default = "Security Group Managed by Terraform"
}

variable "backend_sg_ingress_with_cidr_blocks" {
description = "list of ingress rules with cidr blocks to be allowed"
type = list(map(string))
default = []
}

variable "backend_sg_egress_with_cidr_blocks" {
description = "list of egress rules with cidr blocks to be allowed"
type = list(map(string))
default = []
}*/
/*
variable "backend_ingress_rules" {
  default     = {
    "description" = ["For HTTP", "For SSH"]
    "from_port"   = ["80", "22"]
    "to_port"     = ["80", "22"]
    "protocol"    = ["tcp", "tcp"]
    "cidr_blocks" = ["0.0.0.0/0", "0.0.0.0/0"]
  }
  type        = map(list(string))
  description = "Security group rules"
}*/
/*
variable "backend_ingress_rules" {
  default     = {
    "my ingress rule" = {
      "description" = "For HTTP"
      "from_port"   = "80"
      "to_port"     = "80"
      "protocol"    = "tcp"
      "cidr_blocks" = ["0.0.0.0/0"]
    },
    "my other ingress rule" = {
      "description" = "For SSH"
      "from_port"   = "22"
      "to_port"     = "22"
      "protocol"    = "tcp"
      "cidr_blocks" = ["0.0.0.0/0"]
    }
  }
  type        = map(any)
  description = "Security group rules"
}
*/