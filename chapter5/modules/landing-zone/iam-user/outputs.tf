output "user_arn" {
  value = aws_iam_user.example.arn
  description = "ARN of created IAM user"
}