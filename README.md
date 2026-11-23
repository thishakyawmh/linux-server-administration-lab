# Linux Server Administration Lab

A hands-on learning project focused on Linux system administration and DevOps fundamentals using Ubuntu.

## Objectives

- Learn Linux filesystem and directory management
- Practice users, groups, and file permissions
- Manage processes and system services
- Configure and use SSH
- Practice basic Linux networking
- Configure Nginx
- Develop Bash scripting and automation skills
- Practice server troubleshooting
- Document common Linux administration tasks

## Environment

- Ubuntu 26.04.1 LTS
- Bash
- Git
- SSH
- Nginx

## Progress

- [ ] Linux filesystem and directories
- [ ] Users and groups
- [ ] File permissions
- [ ] Package management
- [ ] Processes
- [ ] System services
- [ ] SSH
- [ ] Networking
- [ ] Nginx
- [ ] Bash scripting
- [ ] Troubleshooting

## Project Status

**In Progress**

## Working demonstration: Ubuntu web server and backup

This lab now includes runnable scripts and a custom site, in addition to the
administration notes:

- `01-linux-basics/scripts/backup-lab.sh` creates a timestamped archive and
  checks that it can be read.
- `07-nginx/site/index.html` is the custom page served by Nginx.
- `07-nginx/scripts/deploy.sh` installs the page, validates the Nginx
  configuration, reloads Nginx, and checks the page response.
- `07-nginx/scripts/health-check.sh` checks the Nginx service and HTTP status,
  then writes a timestamped report under `reports/`.
- `07-nginx/scripts/recover-nginx.sh` checks Nginx and starts it if it is
  inactive.

Verified on Ubuntu 26.04.1: the backup archive contained the sample file, the
health check reported Nginx active with HTTP status 200, and the recovery
script confirmed Nginx was active. These checks were run on the local machine.
