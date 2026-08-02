terraform {

  backend "s3" {

    bucket         = "terraform-paddhubucket"

    key            = "jenkins/terraform.tfstate"

    region         = "us-east-1"

    dynamodb_table = "terraform-lock"

    encrypt        = true
  }
}
