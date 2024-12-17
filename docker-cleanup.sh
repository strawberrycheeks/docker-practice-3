#!/bin/bash

# Удаление всех остановленных контейнеров
docker container prune -f

# Удаление всех неиспользуемых образов
docker image prune -a -f

# Удаление незакрепленных томов
docker volume prune -f

# Удаление неиспользуемых сетей
docker network prune -f

# Удаление старого кэша сборки
docker builder prune -f

# Дополнительная очистка логов контейнеров
truncate -s 0 /var/lib/docker/containers/*/*-json.log
