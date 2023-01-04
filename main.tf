terraform {
  required_version = ">= 0.12.24"

   backend "s3" {
     bucket = "terras3automation"
     key = "tfbackendstate/bsfile"
     region = "us-east-1"
   }
}

provider "aws" {
  AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
  AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ID }}
  region = "us-east-1"
}
