
variable "vpc_id" {}
variable "public_subnets" { type = list(string) }
variable "zone_id" {}
variable "app_name" { default = "raghu-app" }
