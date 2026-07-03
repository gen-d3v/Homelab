# Tailscale VPN


## Purpose
Tailscale provides a secure remomte management without the need of portforwarding, this way i can work on the cluster even when I'm not local. 

## Version

- Version: 1.98.8
- long version: 1.98.8-t1241b225b-g0520dfda5

## Installed on
|Server| Tailscale IP | 
|---|---|
| server1 | 100.116.112.46|
| server2 | 100.82.158.108 |
| server3 | 100.111.57.96 |

## Usage

### SSH connection
```powershell
ssh root@100.116.112.46
```

### Web interface
https://100.116.112.46:8006



## Notes

- used for remote management only
- no portforwarding is req.
- cluster communication remains local
- SSH and Proxmox GUI is availible through Tailscale network