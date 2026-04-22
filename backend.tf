terraform {
  backend "s3" {
    bucket = "raghu-buk"
    key    = "ecs/terraform.tfstate"
    region = "ap-south-1"
  }
}
