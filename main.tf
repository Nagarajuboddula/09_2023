provider "aws" {
   region     = "us-east-1"
   access_key = "AKIA37XT3JUN2UO3R3B5"
   secret_key = "vNV0QaXUh1lIh+4BMf46gxhOg0fXW5z1OS7sjUE/"
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

