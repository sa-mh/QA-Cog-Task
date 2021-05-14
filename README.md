# QA-Cog-Task

Task:
Provision a GKE Cluster with terraform and demonstrate the following:

Add output variables to extract information about the generated cluster (e.g the endpoint of the cluster)
Add more options to 'main.tf' file by looking at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_cluster
Change some of the cluster settings
Scale the cluster by adding a new node pool with new configurations
Create a pipeline with CircleCI
Discuss some of the best practices when designing and building highly available clusters.