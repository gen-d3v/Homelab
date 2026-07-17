variable "proxmox_nodes" {
  description = "Proxmox node on which the VM will be created"
  type = map(object({
    api_url = string    
    token_id    = string
    token_secret = string
    name   = string
  }))
  sensitive = true
}

variable debian_template_id {
    type = number
}

variable datastore_id {
    type = map(string)
}

variable network_bridge {
    type = map(string)
}

variable vm_user {
    type = object({
        username = string
        key_path = string
    })
}