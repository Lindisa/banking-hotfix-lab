terraform {
  backend "s3" {
    bucket         = "banking-terraform-state-lab"
    key            = "ecs/prod.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}