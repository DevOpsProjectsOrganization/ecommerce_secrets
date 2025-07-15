provider "aws" {
    region = "us-east-1"
}
# add the s3 bucket tool
terraform {
    backend "s3" {
        name = "terraform-bucket-85"
        key  = "/vault/terraform.tfstate"
        region = "us-east-1"
    }
}