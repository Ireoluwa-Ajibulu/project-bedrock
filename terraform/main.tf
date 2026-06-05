module "vpc" {
  source = "./modules/vpc"

  vpc_name        = var.vpc_name
  vpc_cidr        = var.vpc_cidr
  cluster_name    = var.cluster_name
  azs             = ["us-east-1a", "us-east-1b"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
}

module "eks" {
  source = "./modules/eks"

  cluster_name       = var.cluster_name
  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
  public_subnet_ids  = module.vpc.public_subnet_ids
}

module "rds" {
  source = "./modules/rds"

  cluster_name          = var.cluster_name
  vpc_id                = module.vpc.vpc_id
  private_subnet_ids    = module.vpc.private_subnet_ids
  eks_security_group_id = module.eks.cluster_security_group_id
  db_username           = var.db_username
  db_password           = var.db_password
}

module "dynamodb" {
  source = "./modules/dynamodb"

  cluster_name = var.cluster_name
}

module "s3_lambda" {
  source = "./modules/s3-lambda"

  student_id   = var.student_id
  cluster_name = var.cluster_name
}

module "iam" {
  source = "./modules/iam"

  cluster_name        = var.cluster_name
  student_id          = var.student_id
  assets_bucket_arn   = module.s3_lambda.assets_bucket_arn
  oidc_provider_arn   = module.eks.oidc_provider_arn
  oidc_provider_url   = module.eks.oidc_provider_url
  dynamodb_table_arns = [module.dynamodb.carts_table_arn, module.dynamodb.catalog_table_arn]
  db_secret_arn       = module.rds.db_secret_arn
}
