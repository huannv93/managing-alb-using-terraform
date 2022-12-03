variable "prefix" {
  default     = "managing-alb-using-terraform"
  description = "Common prefix for AWS resources names"
}

variable "aws_region" {
  default     = "us-west-2"
  description = "AWS Region to deploy VPC"
}
