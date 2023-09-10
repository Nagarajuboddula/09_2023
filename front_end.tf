
resource "aws_instance" "frontend_ec2_instance" {
    ami = var.frontend_ec2_ami
    instance_type = var.frontend_ec2_instance_type
    key_name= var.frontend_key_name
    tags = var.frontend_instance_tags
    #sg_description = var.frontend_sg_description
    #sg_ingress_with_cidr_blocks = var.frontend_sg_ingress_with_cidr_blocks
    #sg_egress_with_cidr_blocks = var.frontend_sg_egress_with_cidr_blocks
  user_data = <<-EOF
      #!/bin/sh
      hostnamectl set-hostname c8.local
      EOF
} 





/*
resource "aws_security_group" "frontend_security_group" {
  name = "frontend_security_group"
  description = "frontend_security_group"

  dynamic "ingress" {
    for_each = var.frontend_ingress_rules
    content {
      description      = lookup(frontend_ingress.value, "description", null)
      from_port        = lookup(frontend_ingress.value, "from_port", null)
      to_port          = lookup(frontend_ingress.value, "to_port", null)
      protocol         = lookup(frontend_ingress.value, "protocol", null)
      cidr_blocks      = lookup(frontend_ingress.value, "cidr_blocks", null)
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "frontend_security_group"
  }
}*/

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
}

