resource "aws_iam_policy" "policy" {
  name        = "test_terraform_policy"
  description = "create test policy by terraform"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:ListAllMyBuckets",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
  # create tags
  tags = {
    Creator = "Terraform"
    Scope = "Learning"
  }
}