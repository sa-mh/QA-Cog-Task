output "created_account_id" {
  value = var.new_account_id
}

output "created_account_name" {
  value = var.account_name
}

output "test_name_output" {
  value = google_service_account.service_account.name
}