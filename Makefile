.PHONY: build
build:
	docker build -t mteke/vault-filesystem:0.1 .


.PHONY: launch
launch:
	docker-compose up -d vault-filesystem

.PHONY: attach
attach:
	docker exec -it mteke/vault-filesystem:0.1 /bin/sh
