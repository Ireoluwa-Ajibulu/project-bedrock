output "carts_table_name" {
  value = aws_dynamodb_table.carts.name
}

output "carts_table_arn" {
  value = aws_dynamodb_table.carts.arn
}

output "catalog_table_name" {
  value = aws_dynamodb_table.catalog.name
}

output "catalog_table_arn" {
  value = aws_dynamodb_table.catalog.arn
}
