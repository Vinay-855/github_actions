terraform {
  required_version = ">= 0.12.24"

   backend "s3" {
     bucket = "terras3automation"
     key = "tfbackendstate/bsfile"
     region = "us-east-1"
   }
}

provider "aws" {
  region = "us-east-1"
}

resource "github_actions_secret" "example_secret" {
  repository       = " Vinay-855/github_actions"
  secret_name      = "AWS_ACCESS_KEY_ID"
}
