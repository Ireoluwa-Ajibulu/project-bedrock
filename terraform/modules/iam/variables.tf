variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "student_id" {
  description = "Student ID for unique resource naming"
  type        = string
}

variable "assets_bucket_arn" {
  description = "ARN of the assets S3 bucket"
  type        = string
}

variable "oidc_provider_arn" {
  description = "OIDC provider ARN for EKS"
  type        = string
}

variable "oidc_provider_url" {
  description = "OIDC provider URL for EKS"
  type        = string
}

variable "dynamodb_table_arns" {
  description = "ARNs of DynamoDB tables"
  type        = list(string)
}

variable "db_secret_arn" {
  description = "ARN of the DB credentials secret"
  type        = string
}
