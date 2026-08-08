# Controller - Raspberry Pi 4 model b 

## Hardware

- **Model:** Raspberry Pi 4 Model B
- **Memory:** 1 GB RAM
- **Storage:** 64 GB microSD

## Operating system
- **OS:** Raspberry Pi OS Lite (64-bit)
- **Interface:** Command-line only
- **Architecture:** ARM64


## Network configuration
- **Hostname:** `Controller`
- **Connection:** Ethernet
- **Remote access:** SSH and Tailscale

## Purpose
A lightweight, always-on management node for the homelab cluster.

### Main responsibilities

- Ansible controller
- Wake-on-LAN controller
- Tailscale access point
- Pi-hole DNS server *(planned)*
- Lightweight CI/CD runner *(planned)*

# Constraints

The Raspberry Pi has 1 GB of RAM and is therefore intended only for lightweight management workloads.

Resource-intensive tasks such as Docker image builds, Java builds, frontend builds, and integration tests should run on a separate VM-based runner.