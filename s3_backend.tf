terraform {
  backend "s3" {
    bucket         = "statefile-storage-demo"
    key            = "/DEMO/DEMO2/NC_demo_terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    kms_key_id     = "arn:aws:kms:us-east-1:932333216011:key/04f4d4fa-bc87-440b-a32e-c2835ef1aa90"
    #dynamodb_table = "NAGA"
  }
}