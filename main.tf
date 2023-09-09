terraform {
required_version = “>=0.12”
}
provider “aws” {
#profile = var.profile
shared_credentials_files = ["/root/.aws/credentials"]
region = us-east-1
}
resource "aws_instance" "ec2_example" {

    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"
    key_name= "lambda-test"
    #vpc_security_group_ids = [aws_security_group.main.id]

  user_data = <<-EOF
      #!/bin/sh
      sudo apt-get update
      sudo apt install -y apache2
      sudo systemctl status apache2
      sudo systemctl start apache2
      sudo chown -R $USER:$USER /var/www/html
      sudo echo "<html><body><h1>Hello this custom page built with Terraform User Data</h1></body></html>" > /var/www/html/index.html
      EOF
} 

