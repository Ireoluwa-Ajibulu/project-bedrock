output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "cluster_name" {
  value = module.eks.cluster_name
}

output "region" {
  value = var.aws_region
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "assets_bucket_name" {
  value = module.s3_lambda.assets_bucket_name
}

output "dev_view_access_key_id" {
  value     = module.iam.dev_view_access_key_id
  sensitive = true
}

output "dev_view_secret_access_key" {
  value     = module.iam.dev_view_secret_access_key
  sensitive = true
}

output "dev_view_console_password" {
  value     = module.iam.dev_view_console_password
  sensitive = true
}

output "mysql_endpoint" {
  value = module.rds.mysql_endpoint
}

output "postgresql_endpoint" {
  value = module.rds.postgresql_endpoint
}

output "alb_controller_role_arn" {
  value = module.iam.alb_controller_role_arn
}
