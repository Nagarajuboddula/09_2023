
resource "aws_instance" "frontend_ec2_instance" {
    ami = var.frontend_ec2_ami
    instance_type = var.frontend_ec2_instance_type
    key_name= var.frontend_key_name
    tags = var.frontend_instance_tags
    sg_description = var.frontend_sg_description
    sg_ingress_with_cidr_blocks = var.frontend_sg_ingress_with_cidr_blocks
    sg_egress_with_cidr_blocks = var.frontend_sg_egress_with_cidr_blocks
  user_data = <<-EOF
      #!/bin/sh
      hostnamectl set-hostname c8.local
      EOF
} 

/*
resource "aws_security_group" "main" {
  egress = [
    {
      cidr_blocks      = [ "0.0.0.0/0", ]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }
  ]
 ingress                = [
   {
     cidr_blocks      = [ "0.0.0.0/0", ]
     description      = ""
     from_port        = 22
     ipv6_cidr_blocks = []
     prefix_list_ids  = []
     protocol         = "tcp"
     security_groups  = []
     self             = false
     to_port          = 22
  }
  ]
}*/

