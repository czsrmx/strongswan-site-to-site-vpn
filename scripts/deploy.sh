#!/bin/bash

set -e

echo "Building Docker images..."
docker compose build

echo "Starting containers..."
docker compose up -d

echo "Waiting for containers..."
sleep 5

echo "Starting StrongSwan..."
docker exec gateway-a ipsec start
docker exec gateway-b ipsec start

sleep 3

echo
echo "Current IPsec status:"
docker exec gateway-a ipsec status
docker exec gateway-b ipsec status

echo
echo "Deployment completed successfully."

