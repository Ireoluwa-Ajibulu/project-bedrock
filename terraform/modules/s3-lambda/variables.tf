variable "student_id" {
  description = "Student ID for unique bucket naming"
  type        = string
}

variable "cluster_name" {
  description = "EKS cluster name for tagging"
  type        = string
}
