output "CI-VM" {
  value = module.ci_machine.VM-IP
}
output "Cluster-Endpooint" {
  value = module.main_cluster.endpoint
}