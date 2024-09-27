Personal Digital Infrastructure

# Web Hosting - Central Reverse Proxy

A small (1 core, 1GB RAM) VPS uses Caddy as a reverse proxy. Caddy server terminates the TLS (HTTPS) and the traffic for each domain is forwarded through Tailscale to web servers, who themselves don't have a fixed IP. 

## VPS Setup

OS: FreeBSD 14

Install Tailscale:
```
pkg install tailscale
```
Edit /etc/rc.conf to add `tailscaled_enable=“YES”`
Run `service tailscaled start`. If you get an error, reboot.
After reboot, run `tailscale up --advertise-exit-node`

The exit node functionality is not necessary but it's a nice to have.

