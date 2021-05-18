variable "pool_name" {
    description = "name of the node pool"
}
variable "pool_location" {
    description = "node pool region"
}
variable "nodes" {
    description = "amount of nodes in the pool"
    default = 2
}
variable "cluster_name" {
    description = "name of the cluster"
}
variable "preemptible_bool" {
    description = "preemptible true or false"
    default = true
}
variable "node_machine_type" {
    description = "machine type for node"
    default = "e2-medium"
}
variable "service_acct" {
    description = "service account to use"
    default = "terraform-account@qa-cog-task.iam.gserviceaccount.com"
}