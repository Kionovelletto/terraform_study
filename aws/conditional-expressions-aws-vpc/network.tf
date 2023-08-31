resource "aws_vpc" "vpc" {
  count = var.environment == "prod" ? 1 : 0 #caso o valor estiver "prod" o ambiente será, caso contrário não.

  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "vpc-terraform"
  }
}