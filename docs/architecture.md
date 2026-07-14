# Architecture

The environment simulates a Site-to-Site VPN between two private networks.

LAN A
↓

Gateway A

↓

IPsec Tunnel (IKEv2)

↓

Gateway B

↓

LAN B

Each gateway acts as a VPN endpoint responsible for encrypting and decrypting traffic.

The WAN network is represented by a Docker bridge network.

The LAN networks are isolated Docker bridge networks.
