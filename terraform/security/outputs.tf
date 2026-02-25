output "alb_sg" {
  value = aws_security_group.alb_sg.id
}

output "ecs_sg" {
  value = aws_security_group.ecs_sg.id
}

output "ecs_task_execution_role_arn" {
  value = aws_iam_role.ecs_task_execution_role.arn
}