terraform {
  backend "s3" {
    bucket = "xheyi_eks_terraform_state"
    key = "eks/terraform.tfstate"
    region = "eu-north-1"
    encrypt = true
    use_lockfile = true
  }
}