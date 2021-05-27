all: stop cleanup build start

build:
	@docker-compose build

restart: stop start

start:
	@docker-compose up -d

stop:
	@docker-compose stop

cleanup:
	@docker rm nginxplus

reload:
	@docker exec -it nginxplus nginx -s reload

check:
	@docker exec -it nginxplus nginx -t

logs:
	@docker logs -f nginxplus

shell:
	@docker exec -it nginxplus /bin/bash