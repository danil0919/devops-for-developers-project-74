run-tests:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

run-tests-ci:
	docker compose -f docker-compose.yml up --build --abort-on-container-exit --exit-code-from app