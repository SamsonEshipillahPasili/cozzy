#!/bin/bash

# Run makemigrations
echo "Running makemigrations..."
uv run python manage.py makemigrations

# Run migrate
echo "Running migrate..."
uv run python manage.py migrate

# Start Gunicorn
echo "Starting Gunicorn..."
uv run gunicorn cozzy.wsgi:application --bind 0.0.0.0:8000
