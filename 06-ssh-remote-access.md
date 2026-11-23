
# SSH Configuration and Remote Access

## Objective

Learn how to configure SSH and securely access Linux systems remotely.

## SSH Client and Server

| Command | Purpose |
|---|---|
| `ssh -V` | Check SSH client version |
| `sudo apt install openssh-server` | Install SSH server |
| `sudo systemctl start ssh` | Start SSH service |
| `sudo systemctl enable ssh` | Enable SSH at boot |
| `sudo systemctl status ssh` | Check SSH service status |

## SSH Connections

| Command | Purpose |
|---|---|
| `hostname -I` | Display IP addresses |
| `ssh user@hostname` | Connect to a remote server |
| `ssh thish@localhost` | Test a local SSH connection |

## SSH Key Management

| Command | Purpose |
|---|---|
| `ssh-keygen -t ed25519` | Generate an SSH key pair |
| `cat ~/.ssh/id_ed25519.pub` | Display public key |
| `chmod 700 ~/.ssh` | Secure SSH directory permissions |
| `chmod 600 ~/.ssh/authorized_keys` | Secure authorized keys permissions |

## Practical Exercises

- Checked SSH client installation.
- Installed and started OpenSSH Server.
- Tested a local SSH connection.
- Generated an Ed25519 SSH key pair.
- Configured public-key authentication.

## Security Notes

- Never share private SSH keys.
- Use SSH keys for secure authentication.
- Protect private keys with a passphrase.
- Keep SSH software updated.
- Restrict remote access appropriately.

## What I Learned

- SSH client and server concepts.
- How to manage the SSH service.
- How to connect to a Linux machine remotely.
- How SSH key authentication works.
- Basic SSH security practices.

