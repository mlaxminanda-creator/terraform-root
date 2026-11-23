terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "mydev-project-terraform-sample-batch-3355"
    region         = "us-east-1"
    key            = "batch-32/terraform.tfstate"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
