DOCKER_COMPOSE = docker-compose
PHP_CONTAINER = $(DOCKER_COMPOSE) exec php

.PHONY: help
help:
	@echo "Comandos disponibles:"
	@echo "  build        Construir el contenedor Docker"
	@echo "  up           Levantar los servicios Docker"
	@echo "  down         Apagar los servicios Docker"
	@echo "  test         Ejecutar pruebas"

.PHONY: build
build:
	$(DOCKER_COMPOSE) up --build -d

.PHONY: up
up:
	$(DOCKER_COMPOSE) up -d

.PHONY: down
down:
	$(DOCKER_COMPOSE) down

.PHONY: test
test:
	$(PHP_CONTAINER) php vendor/bin/phpunit tests/
