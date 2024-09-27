Personal Digital Infrastructure

# Web Hosting - Central Reverse Proxy

A small (1 core, 1GB RAM) VPS uses Caddy as a reverse proxy. Caddy server terminates the TLS (HTTPS) and the traffic for each domain is forwarded through Tailscale to web servers, who themselves don't have a fixed IP. 

## VPS Setup

OS: FreeBSD 14

### Install Tailscale:
```
pkg install tailscale
```
Edit /etc/rc.conf to add `tailscaled_enable=“YES”`
Run `service tailscaled start`. If you get an error, reboot.
After reboot, run `tailscale up --advertise-exit-node`

The exit node functionality is not necessary but it's a nice to have.

### Install Caddy server

```
pkg install caddy
```
Edit Caddyfile
```
cd /usr/local/etc/caddy
vim Caddyfile
```
To something like:
```
www.mywebsite.com {
  reverse_proxy 100.101.102.103:3000
}
```
Where the A record for `www.mywebsite.com` points to the public IP of this VPS, and the destination IP is the tailscale net IP of the web server that actually processes the request.

```
caddy stop
caddy reload
caddy start
```
