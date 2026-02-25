module "networking" {
  source   = "./networking"
  vpc_cidr = var.vpc_cidr
}

module "security" {
  source = "./security"
  vpc_id = module.networking.vpc_id
}

module "loadbalancer" {
  source         = "./loadbalancer"
  vpc_id         = module.networking.vpc_id
  public_subnets = module.networking.public_subnets
  alb_sg         = module.security.alb_sg
}

module "compute" {
  source                      = "./compute"
  ecs_task_execution_role_arn = module.security.ecs_task_execution_role_arn
  private_subnets             = module.networking.private_subnets
  ecs_sg                      = module.security.ecs_sg
  target_group_arn            = module.loadbalancer.target_group_arn
  container_image             = var.container_image
}