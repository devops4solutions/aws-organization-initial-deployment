provider "aws" {
  alias      = "dev"
  region     = "us-east-1"
  access_key = var.access_key_d
  secret_key = var.secret_key_d
  assume_role {
    role_arn = "arn:aws:iam::767397957425:role/OrganizationAccountAccessRole"
  }
  default_tags {
    tags = {
      Automation = true
      Team       = "DevOps"
      User       = "Managed by Terraform"
    }
  }
}
