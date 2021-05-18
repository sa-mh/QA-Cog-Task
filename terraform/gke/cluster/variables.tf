variable "cluster_name" {
    description = "name of the cluster"
    default = "gke-cluster"
}
variable "cluster_location" {
    description = "location of the cluster"
}
variable "remove_default" {
    description = "remove default node pool"
    default = true
}
variable "initial_nodes" {
    description = "amount of initial nodes"
    default = 1
}