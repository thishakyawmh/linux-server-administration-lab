# Linux Process and Service Management

## Objective

Learn how to monitor Linux processes and manage system services using systemd.

## Process Management

| Command | Purpose |
|---|---|
| `ps aux` | Display running processes |
| `top` | Monitor processes in real time |
| `htop` | Interactive process monitoring |
| `pgrep` | Find process IDs |
| `pkill` | Terminate processes by name |
| `jobs` | Display background jobs |
| `free -h` | Display memory usage |
| `df -h` | Display disk usage |
| `du -sh` | Display directory storage usage |

## Service Management

| Command | Purpose |
|---|---|
| `systemctl status` | Check service status |
| `systemctl start` | Start a service |
| `systemctl stop` | Stop a service |
| `systemctl restart` | Restart a service |
| `systemctl enable` | Enable startup at boot |
| `systemctl disable` | Disable startup at boot |
| `journalctl -u` | View service logs |

## What I Learned

- How Linux processes work.
- How to monitor CPU and memory usage.
- How to find and terminate processes.
- How systemd manages services.
- How to inspect service status and logs.
- Difference between starting and enabling a service.
