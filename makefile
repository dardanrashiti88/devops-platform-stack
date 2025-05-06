# Makefile for automating common tasks

# Variables
DOCKER_COMPOSE = docker-compose
DOCKER_COMPOSE_BUILD = $(DOCKER_COMPOSE) build
DOCKER_COMPOSE_UP = $(DOCKER_COMPOSE) up -d
DOCKER_COMPOSE_DOWN = $(DOCKER_COMPOSE) down
DOCKER_COMPOSE_LOGS = $(DOCKER_COMPOSE) logs -f
DOCKER_COMPOSE_EXEC = $(DOCKER_COMPOSE) exec

.PHONY: build up down logs exec cleanup

# Build all Docker images
build:
	$(DOCKER_COMPOSE_BUILD)

# Start up all services
up:
	$(DOCKER_COMPOSE_UP)

# Stop and remove containers, networks, and volumes
down:
	$(DOCKER_COMPOSE_DOWN)

# Tail logs for all services
logs:
	$(DOCKER_COMPOSE_LOGS)

# Execute a command inside a running container
exec:
	@echo "Executing command in container"
	$(DOCKER_COMPOSE_EXEC) $(container) $(command)

# Cleanup unused Docker images, containers, and volumes
cleanup:
	docker system prune -f

# Example of setting up and running a custom task (e.g., database backup)
backup:
	./scripts/backup.sh

restore:
	./scripts/restore.sh
