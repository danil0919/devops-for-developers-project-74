run-tests:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

start-dev:
	export NODE_ENV="development"; docker compose up --build
	
start-prod:
	export NODE_ENV="production"; docker-compose up --build

setup-local:
	docker run -it -w /root -v `pwd`/app:/root node:20.12.2 make setup