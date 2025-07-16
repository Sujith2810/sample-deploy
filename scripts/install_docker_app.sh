#!/bin/bash

cd /home/ec2-user/app

# Stop and remove existing container
docker stop myapp || true && docker rm myapp || true

# Build image
docker build -t myapp:latest .

# Run container
docker run -d -p 80:3000 --name myapp myapp:latest

chmod +x scripts/install_docker_app.sh
