#!/bin/bash

echo "Stopping lab..."

docker compose down -v

echo "Removing unused Docker resources..."

docker system prune -f

echo "Done."
