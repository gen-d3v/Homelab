# Node 1 - Lenovo ThinkCentre SFF M910S

## Specs

- **OS:** Proxmox VE 9.2
- **CPU:** Intel i5-6400
- **RAM:** 8GB DDR4
- **SSD:** 240GB
- **HDD:** 1TB
- **GPU:** Intel HD Graphics 530

## Operating System

- **OS:** Proxmox VE 9.2

## Network Configuration

- **Hostname:** server1
- **IP Address:** 192.168.178.11/24
- **bridge:** vmbr0

## Purpose

_TBD_

## Backup Drive Configuration

HDD drive has been configured as a backup drive for the Proxmox VE 9.2 server. The drive is mounted at `/mnt/backup` and is used to store backups of virtual machines and containers.

Backups have a retention of 6. Each backup is made every 2 hours. At the moment, the nodes are not online 24/7, so the backup schedule is not yet fully utilized. The backup drive is also used to store ISO images for virtual machines.

The reason for 6 backups is to simulate a working day, 2\*4 means 8 hours of work, so 6 would mean 4 hours of work from the previous day.
