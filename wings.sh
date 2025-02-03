SkyExo-Wings/
│── cmd/                  # CLI commands ka implementation (start, stop, restart, etc.)
│── config/               # Configuration files (YAML, JSON)
│── docker/               # Docker container scripts
│── logs/                 # Server logs store karne ke liye folder
│── scripts/              # Installation & update scripts
│── services/             # Game server management logic
│── systemd/              # Linux service files (skyexo-wings.service)
│── utils/                # Helper functions (network, firewall, etc.)
│── .gitignore            # Unnecessary files ignore karne ke liye
│── config.yml            # Main configuration file
│── daemon.go (or daemon.py)  # Daemon service ka main file (Golang/Python)
│── Dockerfile            # Daemon ko containerized karne ke liye
│── LICENSE               # Open-source license
│── README.md             # Project ka documentation

panel_url: "https://skyexo-panel.com"
daemon_port: 8080
docker_network: "skyexo_network"

image: "itzg/minecraft-server"
ports:
  - "25565:25565"
  
memory: "2GB"
#!/bin/bash
echo "Installing SkyExo Wings..."
mkdir -p /etc/skyexo
curl -Lo /usr/local/bin/skyexo-wings https://your-repo.com/wings
chmod +x /usr/local/bin/skyexo-wings
echo "Installation complete!"
