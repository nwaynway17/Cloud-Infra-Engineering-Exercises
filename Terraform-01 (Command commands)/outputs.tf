output "account_id" {
  description = "AWS Account ID number of the account that owns or contains the calling entity"
  value       = data.aws_caller_identity.nway-shoppingcart-console-admin.account_id
}

output "arn" {
  description = "ARN associated with the calling entity"
  value       = data.aws_caller_identity.nway-shoppingcart-console-admin.arn
}

output "id" {
  description = "Account ID number of the account that owns or contains the calling entity"
  value       = data.aws_caller_identity.nway-shoppingcart-console-admin.id
}

output "user_id" {
  description = "Unique identifier of the calling entity"
  value       = data.aws_caller_identity.nway-shoppingcart-console-admin.user_id
}
