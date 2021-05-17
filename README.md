# QA-Cog-Task

Task:
Provision a GKE Cluster with terraform and demonstrate the following:

Add output variables to extract information about the generated cluster (e.g the endpoint of the cluster)
Add more options to 'main.tf' file by looking at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/container_cluster
Change some of the cluster settings
Scale the cluster by adding a new node pool with new configurations
Create a pipeline with CircleCI
Discuss some of the best practices when designing and building highly available clusters.

to do:
add variables

questions:
need entire structure? eg: networks? subnets? vpc?
purpose of circleci?
scale cluster by adding new node pool with new configs just a change in terraform/adding a new role?
add nodes to pool without destroying cluster?



doc links:

terraform:
getting started https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/getting_started 
kubernetes https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/using_gke_with_terraform
gke example https://registry.terraform.io/modules/terraform-google-modules/kubernetes-engine/google/latest
more examples https://www.fairwinds.com/blog/how-to-use-terraform-with-gke-a-step-by-step-guide-to-deploying-your-first-cluster
name of iam roles for terraform binding https://cloud.google.com/iam/docs/understanding-roles
cluster ouputs https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/container_cluster
circleci:
how it works sort of https://circleci.com/docs/2.0/about-circleci/#:~:text=CircleCI%20runs%20each%20job%20in,integrated%20Slack%20and%20IRC%20notifications.
