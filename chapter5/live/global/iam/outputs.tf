output "user_arns" {
  value = module.users[*].user_arn
  description = "ARNS of created IAM users"
}

