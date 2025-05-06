#!/bin/bash

echo "Building the Docker images..."
docker-compose build

echo "Starting services..."
docker-compose up -d

echo "Services started."
