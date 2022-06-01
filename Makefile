.PHONY: compose start

compose: compose.yml Dockerfile
	docker-compose up --build

start: server.js
	yarn node server
