resource "google_compute_project_metadata" "my_ssh_key" {
  metadata = {
    ssh-keys = <<EOF

      Sam:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJO1CX50bo7geBj3RzbtiZADVET3tiHQqtRBNWyBhcEMz/ykO4tpBSVULAxYXOYTjDMwI2dlVwlZGiYPMHTnIWQLELV0vVQ5D3oDqp+LVkvUrLy3Qllgp9jH0DCiqM4G+fYmwDkynvTK9aDKfXeEUxbbr6ywolxLNHYOMKjZhn6FCOaJdsBwXCQAI/+hVuaJt5klBRKNqiHsENJ8/fLb4o4Xncp4AORgUjEUTSq8/rsFqC4MmO/N5haZUrip3NfDPaW2ZcyK0Ir+8qoroR9X0SjB26pgnmcIQebyGKUKAWMCZWD7DeI196S3rEq3puNRW/RElqtbxw4z048v+aOAjl Sam@terraform-cm
    EOF
  }
}