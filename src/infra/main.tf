terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "~> 0.93"
    }
  }
}

provider "proxmox" {
  endpoint = var.proxmox_nodes.pm1.api_url

  api_token = "${var.proxmox_nodes.pm1.token_id}=${var.proxmox_nodes.pm1.token_secret}"

  insecure = true
}


