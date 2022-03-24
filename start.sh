#!/bin/sh

# Start Gunicorn processes
echo Starting Gunicorn.
# python manage.py runserver 8002
gunicorn eben.wsgi:application \
    --bind 0.0.0.0:8000 \
    --workers 1 &&
    echo Migrating Database Models
    echo "yes" | python manage.py collectstatic
    python manage.py makemigrations &&
    python manage.py migrate 