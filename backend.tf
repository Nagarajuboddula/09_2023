
resource "aws_instance" "backend_ec2_instance" {
    ami = var.backend_ec2_ami
    instance_type = var.backend_ec2_instance_type
    key_name= var.backend_key_name
    tags = var.backend_instance_tags
    #sg_description = var.backend_sg_description
    #sg_ingress_with_cidr_blocks = var.backend_sg_ingress_with_cidr_blocks
iam_instance_profile = "${aws_iam_instance_profile.backend_ec2_profile.name}"
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


resource "aws_iam_instance_profile" "backend_ec2_instance_profile" {
  name = "backend_ec2_instance_profile"
  role = "${aws_iam_role.backend_ec2_instance_role.name}"
}
resource "aws_iam_role_policy" "backend_ec2_policy" {
  name = "backend_ec2_instance_policy"
  role = "${aws_iam_role.backend_ec2_instance_role.id}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}