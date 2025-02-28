# Берём стабильную версию Ubuntu 22.04 (LTS)
FROM ubuntu:22.04

# Отключаем интерактивные запросы apt (TZ и т.п.)
ENV DEBIAN_FRONTEND=noninteractive

# Устанавливаем curl, gnupg и Nginx
RUN apt-get update \
 && apt-get install -y curl gnupg nginx \
 && curl -fsSL https://deb.nodesource.com/setup_14.x | bash - \
 && apt-get install -y nodejs \
 && rm -rf /var/lib/apt/lists/*

# Создаём рабочую директорию
WORKDIR /app

# Копируем файлы: Node.js-серверы, скрипт запуска, конфиг Nginx
COPY server1.js server2.js start.sh ./
COPY nginx.conf /etc/nginx/nginx.conf

# Открываем порт 80 внутри контейнера
EXPOSE 80
