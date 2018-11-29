include ./Makefile-task.mk
DOCKER_USER ?= francisjosue
NAME_IMAGE ?= orbis-training-capacitacion
DOCKER_TAG ?= 3.0.0
DOCKER_IMAGE ?= ${NAME_IMAGE}:${DOCKER_TAG}

.DEFAULT_GOAL := help

install: ## Install Project
	@echo "INSTALANDO PROYECTO"
	docker run -it --rm -v ${PWD}:/app -p 3030:1042 $(DOCKER_IMAGE) npm install
start: ## Up docker containers, usage: make start
	@echo "INICIANDO PROEYCTO"
	docker run -it --rm -w /app -v ${PWD}:/app -p 3030:1042 francisjosue/orbis-training-docker npm start
realease: ## Stops and removes the docker containers, usage: make stop
	@echo "LANZAMIENTO PROYECTO"
	docker run -it --rm -w /app -v ${PWD}:/app -p 3030:1042 francisjosue/orbis-training-docker npm start
greet:  # #@backend cambio de ambiente : make greet NAME=juan
	@echo "SALUDAR DOCKER"
	@echo "Ingresar un nombre ejemplo NAME=juan"
	docker run -it --rm -v ${PWD}:/app --entrypoint=resources/example.sh -e NAME=${NAME} -u ${id -u}:${id -g} $(DOCKER_IMAGE)
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
        sort | \
        awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-16s\033[0m %s\n", $$1, $$2}'
