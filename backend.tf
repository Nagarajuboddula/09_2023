
resource "aws_instance" "backend_ec2_instance" {
    ami = var.backend_ec2_ami
    instance_type = var.backend_ec2_instance_type
    key_name= var.backend_key_name
    tags = var.backend_instance_tags
    #sg_description = var.backend_sg_description
    #sg_ingress_with_cidr_blocks = var.backend_sg_ingress_with_cidr_blocks
vpc_security_group_ids = [aws_security_group.sec-grp.id]
    #sg_egress_with_cidr_blocks = var.backend_sg_egress_with_cidr_blocks
  user_data = <<-EOF
      #!/bin/sh
      hostnamectl set-hostname u21.local
      EOF
} 

/*
resource "aws_security_group" "backend_security_group" {
  name = "backend_security_group"
  description = "backend_security_group"

  dynamic "ingress" {
    for_each = var.backend_ingress_rules
    content {
      description      = lookup(backend_ingress.value, "description", null)
      from_port        = lookup(backend_ingress.value, "from_port", null)
      to_port          = lookup(backend_ingress.value, "to_port", null)
      protocol         = lookup(backend_ingress.value, "protocol", null)
      cidr_blocks      = lookup(backend_ingress.value, "cidr_blocks", null)
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "backend_security_group"
  }
}*/

