
# Nginx Web Server Administration

## Objective

Install, configure and manage an Nginx web server on Ubuntu.

## Installation

- Installed Nginx using APT.
- Verified the Nginx service.
- Tested the default webpage.

## Website Configuration

- Created a custom website directory.
- Created an HTML webpage.
- Configured an Nginx server block.
- Hosted the website on port 8080.

## Important Commands

| Command | Purpose |
|---|---|
| `nginx -v` | Check Nginx version |
| `sudo nginx -t` | Test configuration |
| `sudo systemctl start nginx` | Start Nginx |
| `sudo systemctl stop nginx` | Stop Nginx |
| `sudo systemctl reload nginx` | Reload configuration |
| `sudo systemctl status nginx` | Check service status |
| `curl -I localhost` | Inspect HTTP response |
| `tail -f /var/log/nginx/access.log` | Monitor access logs |
| `tail -f /var/log/nginx/error.log` | Monitor error logs |

## What I Learned

- How web servers handle HTTP requests.
- How to install and manage Nginx.
- How to host a custom HTML webpage.
- How to configure an Nginx server block.
- How to validate Nginx configuration.
- How to inspect access and error logs.

