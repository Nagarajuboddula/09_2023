
resource "aws_instance" "frontend_ec2_instance" {
    ami = var.frontend_ec2_ami
    instance_type = var.frontend_ec2_instance_type
    key_name= var.frontend_key_name
    tags = var.frontend_instance_tags
    root_block_device {
    volume_size           = "20"
    volume_type           = "gp2"
    #encrypted             = true
    delete_on_termination = true
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



