resource "aws_dynamodb_table" "carts" {
  name         = "${var.cluster_name}-carts"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name = "${var.cluster_name}-carts"
  }
}

resource "aws_dynamodb_table" "catalog" {
  name         = "${var.cluster_name}-catalog"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name = "${var.cluster_name}-catalog"
  }
}
