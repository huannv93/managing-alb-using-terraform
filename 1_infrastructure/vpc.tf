module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = local.vpc_name
  cidr = local.vpc_cidr

  azs = ["${var.aws_region}a", "${var.aws_region}b"]
  public_subnets = [
    cidrsubnet(local.vpc_cidr, 8, 0),
    cidrsubnet(local.vpc_cidr, 8, 1)
  ]

  private_subnets = [
    cidrsubnet(local.vpc_cidr, 8, 2),
    cidrsubnet(local.vpc_cidr, 8, 3)
  ]

  enable_nat_gateway   = false
  single_nat_gateway   = false
  enable_dns_hostnames = false


  tags = merge(
    {
      Name = local.vpc_name
    },
    local.common_tags
  )
}
