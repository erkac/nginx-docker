all: cleanup build start

build:
	@docker-compose build

start:
	@docker-compose up -d

cleanup:
	@docker rm nginxplus

logs:
	@docker logs -f nginxplus

shell:
	@docker exec -it nginxplus /bin/bash