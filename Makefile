init:
	docker-compose up -d --build
	docker-compose exec nest yarn install
	sleep 10
	docker-compose exec -T mysql mysql -psecret < docker/db/initial.sql
ps:
	docker-compose ps
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
sqlroot:
	docker-compose exec mysql mysql -r -p
sqluser:
	docker-compose exec mysql mysql --user=user --password=secret