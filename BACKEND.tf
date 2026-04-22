terraform {
  backend "s3" {
    bucket         = "raghu-buk"
    key            = "ecs/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }
}
