# Raspberry Pi Router Setup with OPNsense and Docker

This Ansible playbook automates the setup of a Raspberry Pi 4 as a router using OPNsense for firewall/routing and Docker for additional services.

## Prerequisites

- Raspberry Pi 4 (8GB RAM) with Ubuntu Server
- Two USB-to-Ethernet adapters (as identified in your setup)
- Ansible installed on the Pi or control machine

## Network Layout

- **WAN Interface**: eth2 (Realtek 8156) - Connected to main router
- **LAN Interface**: eth1 (TP-Link UE300) - Internal network
- **Bridge**: br0 - Connects VMs to LAN

## Memory Allocation

- Host (Raspberry Pi): 2GB
- OPNsense VM: 2GB
- Docker VM: 4GB

## Quick Start

1. Clone this repository
2. Update `inventory/hosts.yml` with your specific configuration
3. Run the playbook:

```bash
ansible-playbook playbooks/main.yml
