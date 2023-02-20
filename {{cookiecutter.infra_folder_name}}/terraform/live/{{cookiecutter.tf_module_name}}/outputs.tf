output "table_arn" {
  description = "ARN of the DynamoDB table"
  value       = aws_dynamodb_table.dynamodb-table.arn
}

output "iam_role_arn" {
  description = "ARN of the IAM role to read/write to DynamoDB table"
  value = aws_iam_role.table-access-role.arn
}
