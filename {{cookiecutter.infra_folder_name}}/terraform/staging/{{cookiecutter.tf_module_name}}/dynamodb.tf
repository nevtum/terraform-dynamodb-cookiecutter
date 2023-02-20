resource "aws_dynamodb_table" "dynamodb-table" {
  name         = var.table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = var.key_name

  attribute {
    name = var.key_name
    type = "S"
  }

  ttl {
    attribute_name = var.ttl_name
    enabled        = true
  }

  tags = {
    Environment = "Staging"
    Name = "staging-{{cookiecutter.table.name}}"
    Group = "{{cookiecutter.tags.group}}"
    Squad = "{{cookiecutter.tags.squad}}"
    Tribe = "{{cookiecutter.tags.tribe}}"
  }
}
