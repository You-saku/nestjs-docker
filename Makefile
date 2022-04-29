init:
	docker-compose up -d --build && docker-compose exec nest yarn install
up:
	docker-compose up -d 
down:
	docker-compose down
build:
	docker-compose build
sh:
	docker-compose exec nest sh
dev:
	docker-compose exec nest yarn run start:dev
mysql:
	docker-compose exec mysql mysql --user=user --password=secret