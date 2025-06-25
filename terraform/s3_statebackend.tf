terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-nishat489"
    key            = "terraform/state.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks" # optional but recommended
    encrypt        = true
  }
}

