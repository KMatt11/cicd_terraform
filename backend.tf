terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    region  = "ap-southeast-2"
    profile = "default"
    key     = "global/s3/terraform.tfstate"
    bucket  = "bucket2024"
  }
}
