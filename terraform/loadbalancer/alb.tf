resource "aws_lb" "banking_alb" {
  name               = "banking-prod-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups = [var.alb_sg]
  subnets         = var.public_subnets

  tags = {
    Name = "banking-prod-alb"
  }
}