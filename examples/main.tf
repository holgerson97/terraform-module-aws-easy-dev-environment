terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }
  }
}

provider "aws" {
  region     = var.AWS_DEFAULT_REGION
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

module "aws_development_envrionment" {

  source = "../"

  availabilityZone  = "eu-central-1a"
  serverBundleID    = "micro_2_0"
  serverBlueprintID = "ubuntu_20_04"

  serverCount = 5

}