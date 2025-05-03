pip install --upgrade pip && pip install pdm

web: pdm run gunicorn a_core.asgi:application --bind 0.0.0.0:8000 --worker-class uvicorn.workers.UvicornWorker