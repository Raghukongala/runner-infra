
resource "aws_route53_record" "dns" {
  zone_id = var.zone_id
  name    = "app.example.com"
  type    = "A"

  alias {
    name                   = aws_lb.app_alb.dns_name
    zone_id                = aws_lb.app_alb.zone_id
    evaluate_target_health = true
  }
}
