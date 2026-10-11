terraform {
  backend "s3" {
    bucket = "xheyi-eks-terraform-state"
    key = "eks/terraform.tfstate"
    region = "eu-north-1"
    encrypt = true
    use_lockfile = true
  }
}