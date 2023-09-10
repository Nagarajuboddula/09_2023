###############################
### FRONTEND VARIABLES#########
##################################
frontend_ec2_ami = "ami-026ebd4cfe2c043b2"
frontend_ec2_instance_type = "t2.micro"
frontend_key_name = "naga"
frontend_instance_tags = {
    Name = "FE_c8.local"
    OsPlatform = "RHEL"
    Application = "NGINX"
}



###############################
### backend VARIABLES#########
##################################
backend_ec2_ami = "ami-053b0d53c279acc90"
backend_ec2_instance_type = "t2.micro"
backend_key_name = "naga"
backend_instance_tags = {
    Name = "FE_u21.local"
    OsPlatform = "Ubuntu"
    Application = "Netdata"
}

