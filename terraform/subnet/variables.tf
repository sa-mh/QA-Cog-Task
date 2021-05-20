variable "subnet_name" {
    description = "The name of the subnet"
}
variable "ip_range" {
    description = "The range of the subnet"
    default = "10.0.0.0/16"
}
variable "network_region" {
    description = "The region of the subnet"
    default = "europe-west2"
}
variable "vpc" {
    description = "The id of the VPC"
}