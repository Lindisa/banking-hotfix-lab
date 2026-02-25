resource "aws_ecs_service" "banking_service" {
  name            = "banking-prod-service"
  cluster         = aws_ecs_cluster.banking_cluster.id
  task_definition = aws_ecs_task_definition.banking_task.arn
  launch_type     = "FARGATE"
  desired_count   = 2

  network_configuration {
    subnets          = var.private_subnets
    security_groups  = [var.ecs_sg]
    assign_public_ip = false
  }

  load_balancer {
    target_group_arn = var.target_group_arn
    container_name   = "banking-app"
    container_port   = 5000
  }

  depends_on = [
    aws_ecs_cluster.banking_cluster
  ]
}