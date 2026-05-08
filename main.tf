data "terraform_remote_state" "network" {
  backend = "remote"

  config = {
    organization = "vmanral-org-1"

    workspaces = {
      name = "network-project"
    }
  }
}

output "network_public_ips" {
  description = "List of public IP's fetched from the Network workspace"
  value = data.terraform_remote_state.network.outputs.public_ips
}
