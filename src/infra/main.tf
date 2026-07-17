terraform { 
    required_version = ">= 1.0"
    required_providers {
        proxmox = {
            source = "telmate/proxmox"
        }
    }
}

provider "proxmox" {
    # pm_api_url = 
    # pm_api_token_id = 
    # pm_api_token_secret = 
    pm_tls_insecure = true
}

resource "proxmox_lxc" "debian_linux_vm" { 
    
}


