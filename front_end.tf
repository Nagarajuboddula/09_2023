
resource "aws_instance" "frontend_ec2_instance" {

    #ami = "ami-026ebd4cfe2c043b2"
    ami = var.frontend_ec2_ami
    #instance_type = "t2.micro"
    instance_type = var.frontend_ec2_instance_type
    #key_name= "naga"
    key_name= var.frontend_key_name
    #vpc_security_group_ids = [aws_security_group.main.id]

  user_data = <<-EOF
      #!/bin/sh
      hostnamectl set-hostname c8.local
      EOF*/ 
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

