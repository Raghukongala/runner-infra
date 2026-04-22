resource "aws_lb" "alb" {
  name               = "raghu-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.ecs_sg.id]
  subnets            = ["subnet-1", "subnet-2"]
}