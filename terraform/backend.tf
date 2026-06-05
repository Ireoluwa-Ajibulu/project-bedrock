terraform {
  backend "s3" {
    bucket = "project-bedrock-tfstate-alt-soe-025-3251"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
