resource "google_service_account_iam_binding" "service_account_iam" {
  service_account_id = var.account_id
  role               = var.account_role

  members = [
    "allUsers",
  ]
}