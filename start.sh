#!/bin/sh

echo "📦 Rodando makemigrations"
pdm run python manage.py makemigrations

echo "📨 Rodando migrate"
pdm run python manage.py migrate

echo "🦄 Iniciando gunicorn"
pdm run gunicorn a_core.asgi:application --bind 0.0.0.0:8000 --worker-class uvicorn.workers.UvicornWorker