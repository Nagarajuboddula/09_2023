
resource "aws_instance" "frontend_ec2_instance" {
    ami = var.frontend_ec2_ami
    instance_type = var.frontend_ec2_instance_type
    key_name= var.frontend_key_name
    tags = var.frontend_instance_tags
    data "aws_ebs_volume" "frontend_ebs_volume" {
  most_recent = true

  filter {
    name   = "volume-type"
    values = ["gp2"]
  }

  filter {
    name   = "tag:Name"
    values = ["root"]
  }
}
    vpc_security_group_ids = [aws_security_group.sec-grp.id]
    #sg_description = var.frontend_sg_description
    #sg_ingress_with_cidr_blocks = var.frontend_sg_ingress_with_cidr_blocks
    #sg_egress_with_cidr_blocks = var.frontend_sg_egress_with_cidr_blocks
  user_data = <<-EOF
      #!/bin/sh
      hostnamectl set-hostname c8.local
      EOF
} 



