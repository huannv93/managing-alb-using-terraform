terraform {
  backend "s3" {
    bucket  = "hands-on-cloud-terraform-remote-state-s3"
    key     = "managing-alb-using-terraform-alb-lambda.tfstate"
    region  = "us-west-2"
    encrypt = "true"
  }
}