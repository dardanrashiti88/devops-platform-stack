#!/bin/bash

echo "Cleaning up stopped containers..."
docker container prune -f

echo "Cleaning up unused images..."
docker image prune -a -f

echo "Cleanup completed."
