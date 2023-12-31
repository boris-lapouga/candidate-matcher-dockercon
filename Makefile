up:
	docker-compose up -d

down:
	docker-compose down

rebuild:
	docker-compose down
	docker-compose up -d --build

clean:
	docker system prune -f
