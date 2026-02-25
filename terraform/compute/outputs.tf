output "ecs_cluster_name" {
  description = "ECS Cluster Name"
  value       = aws_ecs_cluster.banking_cluster.name
}