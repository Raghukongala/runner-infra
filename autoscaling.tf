resource "aws_appautoscaling_target" "ecs_target" {
  max_capacity       = 5
  min_capacity       = 1
  resource_id        = "service/raghu-cluster/raghu-service"
  scalable_dimension = "ecs:service:DesiredCount"
  service_namespace   = "ecs"
}