data "aws_iam_policy_document" "assume-role-policy" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      type = "Service"
      identifiers = [
        "dynamodb.amazonaws.com"
      ]
    }
  }
}

data "aws_iam_policy_document" "table-access-policy" {
  statement {
    actions = [
      "dynamodb:GetItem",
      "dynamodb:PutItem"
    ]
    effect = "Allow"
    resources = [
      aws_dynamodb_table.dynamodb-table.arn
    ]
  }
}

resource "aws_iam_policy" "table-access-policy" {
  description = "Policy to access DynamoDB table"
  policy      = data.aws_iam_policy_document.table-access-policy.json
}

resource "aws_iam_role" "table-access-role" {
  name = "{{cookiecutter.iam_role_name}}Staging"
  description = "Role to access DynamoDB table"
  assume_role_policy = data.aws_iam_policy_document.assume-role-policy.json
}

resource "aws_iam_role_policy_attachment" "cache-role-policy-attachment" {
  policy_arn = aws_iam_policy.table-access-policy.arn
  role = aws_iam_role.table-access-role.name
}