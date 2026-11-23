
# Linux Networking

## Objective

Understand Linux networking fundamentals and practice network troubleshooting commands using Ubuntu.

## Network Interfaces

| Command | Purpose |
|---|---|
| `ip link` | Display network interfaces |
| `ip addr` | Display IP addresses |
| `hostname -I` | Display assigned IP addresses |
| `ip -s link` | Display network interface statistics |

## IP Address and Routing

| Command | Purpose |
|---|---|
| `ip route` | Display routing table |
| `ip route get 8.8.8.8` | Check the route to a destination |

## Network Connectivity

| Command | Purpose |
|---|---|
| `ping -c 4 8.8.8.8` | Test connectivity to an IP |
| `ping -c 4 google.com` | Test connectivity and DNS resolution |

## DNS Management

| Command | Purpose |
|---|---|
| `getent hosts google.com` | Resolve a hostname |
| `nslookup google.com` | Query DNS records |
| `cat /etc/resolv.conf` | Inspect resolver configuration |

## Port and Connection Management

| Command | Purpose |
|---|---|
| `ss -tuln` | Display listening TCP/UDP sockets |
| `sudo ss -tulpn` | Display listening sockets with process details |
| `ss -tun` | Display TCP/UDP connections |

## Practical Exercises

- Inspected network interfaces.
- Identified assigned IP addresses.
- Examined the routing table.
- Tested network connectivity.
- Investigated DNS resolution.
- Inspected listening ports.

## What I Learned

- Basic Linux networking concepts.
- Difference between private and public IP addresses.
- How default gateways and routing work.
- How DNS resolves domain names.
- How to inspect listening ports and network connections.
- How to perform basic network troubleshooting.
