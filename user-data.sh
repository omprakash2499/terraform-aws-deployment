#!/bin/bash
set -euo pipefail
dnf install -y docker
systemctl enable --now docker
systemctl enable --now amazon-ssm-agent
docker info
aws --version
touch /var/lib/incident-host-ready
