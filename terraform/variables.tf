variable "region" {
  description = "AWS region for deployment"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "container_image" {
  description = "ECR container image URI"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  default     = "prod"
}