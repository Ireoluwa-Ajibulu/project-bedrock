output "mysql_endpoint" {
  value = aws_db_instance.mysql.endpoint
}

output "postgresql_endpoint" {
  value = aws_db_instance.postgresql.endpoint
}

output "db_secret_arn" {
  value = aws_secretsmanager_secret.db_credentials.arn
}

output "rds_security_group_id" {
  value = aws_security_group.rds.id
}
