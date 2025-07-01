#!/bin/bash

# Run makemigrations
echo "Running makemigrations..."
uv run python manage.py makemigrations

# Run migrate
echo "Running migrate..."
uv run python manage.py migrate

# Run the development server
echo "Starting development server..."
uv run python manage.py runserver
