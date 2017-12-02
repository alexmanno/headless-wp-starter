
install: config-copy build-docker install-wordpress install-frontend

config-copy:
	cp docker-compose.yml.dist docker-compose.yml

build-docker:
	docker-compose build

install-wordpress:
	docker-compose run wordpress robo wordpress:setup

install-frontend:
	docker-compose run frontend npm install
	docker-compose run frontend npm run build

serve:
	docker-compose up -d
