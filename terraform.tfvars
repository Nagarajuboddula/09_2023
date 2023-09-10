###############################
### FRONTEND VARIABLES#########
##################################
frontend_ec2_ami = "ami-026ebd4cfe2c043b2"
frontend_ec2_instance_type = "t2.micro"
frontend_key_name = "naga"
frontend_instance_tags = {
    Name = "FE_u21.local"
    OsPlatform = "RHEL"
    Application = "NGINX"
}
frontend_sg_description = "Security group for frontend"
frontend_sg_ingress_with_cidr_blocks = [
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

    },
]
frontend_sg_egress_with_cidr_blocks = [
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
    },
]