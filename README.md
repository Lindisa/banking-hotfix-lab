# 🏦 AWS Production Hotfix Simulation Lab using Terraform & ECS

## 📌 Project Overview

This project simulates a real-world **production outage** in a banking-grade AWS cloud environment caused by an infrastructure misconfiguration introduced via Terraform deployment.

The objective of this lab is to demonstrate:

- Infrastructure as Code (IaC) using Terraform
- Containerised workload deployment using ECS Fargate
- Application Load Balancer (ALB) traffic routing
- Remote Terraform state management using S3
- State locking using DynamoDB
- Incident simulation caused by misconfigured infrastructure
- Production hotfix using ECS task definition rollback
- Recovery using Last Known Stable Configuration

This mirrors how