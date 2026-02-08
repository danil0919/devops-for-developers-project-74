run-tests:
	docker compose -f docker-compose.yml up --build --abort-on-container-exit 

start-dev:
	export NODE_ENV="development"; docker compose up --build
	
start-prod:
	docker-compose up --build

setup-local:
	docker run -it -w /root -v `pwd`/app:/root node:20.12.2 make setup