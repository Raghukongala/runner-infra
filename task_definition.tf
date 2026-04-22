resource "aws_ecs_task_definition" "task" {
  family                   = "raghu-task"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"

  execution_role_arn = aws_iam_role.ecs_task_role.arn

  container_definitions = jsonencode([
    {
      name  = "app"
      image = "${aws_ecr_repository.repo.repository_url}:latest"
      portMappings = [
        {
          containerPort = 80
        }
      ]
    }
  ])
}