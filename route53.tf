resource "aws_route53_record" "app" {
  zone_id = "ZONE_ID"
  name    = "app.example.com"
  type    = "A"

  alias {
    name                   = aws_lb.alb.dns_name
    zone_id                = aws_lb.alb.zone_id
    evaluate_target_health = true
  }
}