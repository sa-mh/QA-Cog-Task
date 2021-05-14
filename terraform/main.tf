provider "google" {
    credentials = file("service-account/qa-cog-task-da4e551d7692.json")
    project = "QA-Cog-Task"
    region = "eu-west2"
}