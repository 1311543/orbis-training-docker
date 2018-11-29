.PHONY: \
	build

build:
	@echo  "BUILDING PROJECT"
	docker build -t $(DOCKER_IMAGE) .
push:
	@echo "UPLOUDING IMAGE"
	docker push $(DOCKER_USER)/$(DOCKER_IMAGE)
up:
	@echo "STARTING DOCKER IMAGE"
	docker run -it --rm -v ${PWD}:/app -w /app -u ${id -u}:${id -g} -p 3030:1042 $(DOCKER_IMAGE)

login:
	@echo "SIGN IN INTO DOCKER"
	docker login


