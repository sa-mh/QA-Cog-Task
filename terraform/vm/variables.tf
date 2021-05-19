variable "vm_name" {
    description = "The name of the VM"
}
variable "machine" {
    description = "The size of the machine"
    default = "e2-medium"
}
variable "vm_zone" {
    description = "The type of vm"
    default = "europe-west2-a"
}
variable "vpc" {
    description = "The name of the network"
}
variable "subnet" {
    description = "The name of the subnet"
}