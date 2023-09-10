resource "aws_iam_role" "backend_ec2_instance_role" {
  name = "backend_test_role"

  assume_role_policy
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
        "Service": "ssm.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}

  tags = {
      tag-key = "backend_test_role"
  }
}