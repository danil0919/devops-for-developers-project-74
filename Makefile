run-tests:
	export NODE_ENV="test"; docker compose -f docker-compose.yml up --build --abort-on-container-exit --exit-code-from tests

start-dev:
	export NODE_ENV="development"; docker compose -f docker-compose.yml -f docker-compose.override.yml up --build
	
start-prod:
	docker-compose up --build

setup-local:
	docker run -it -w /root -v `pwd`/app:/root node:20.12.2 make setup