provider "vault" {
    address = "http://54.234.13.58:8200"
    token  = var.token
}
# add the s3 bucket tool
terraform {
    backend "s3" {
        bucket = "terraform-bucket-85"
        key  = "vault/terraform.tfstate"
        region = "us-east-1"
    }
}