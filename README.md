![push workflow](https://github.com/danil0919/devops-for-developers-project-74/actions/workflows/push.yml/badge.svg)

[Образ на Docker Hub](https://hub.docker.com/repository/docker/danil0919/devops-for-developers-project-74/general). Образ несовместим с arm64 архитектурой. Для работа на arm64, можно собрать образ локально


Команды:
- make setup-local - установка зависимостей для локальной разработки
- make start-dev - локальный запуск для разработки
- make run-tests - запуск тестов (эта же команда используется для ci тестов)
- make start-prod - запуск проекта в проде

Для локального запуска и запуска на проде нужно добавить в корень проекта .env файл с переменными как в .env.example
