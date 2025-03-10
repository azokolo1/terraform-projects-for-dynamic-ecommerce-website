# Configure the AWS Provider
provider "aws" {
  region = "u-west-2"
  profile = "terraform-user"
}
# store the terraform state file in s3
terraform {
  backend "s3" {
    bucket = "trainium-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "eu-west-2"
    profile = "terraform-user"
  }
}