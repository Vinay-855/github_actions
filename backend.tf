terraform {
  backend "s3" {
    bucket = "terras3automation"
    key    = "tfbackendstate/state"
    region = "us-east-1"
  }
}