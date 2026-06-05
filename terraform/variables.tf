variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "project-bedrock-cluster"
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "project-bedrock-vpc"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "student_id" {
  description = "Student ID for unique resource naming"
  type        = string
  default     = "alt-soe-025-3251"
}

variable "db_password" {
  description = "Master password for RDS instances"
  type        = string
  sensitive   = true
}

variable "db_username" {
  description = "Master username for RDS instances"
  type        = string
  default     = "dbadmin"
}
