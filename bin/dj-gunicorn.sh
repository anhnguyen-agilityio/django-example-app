#!/usr/bin/env bash
if [[ "$PORT" = "" ]]; then
  PORT='8080'
fi

gunicorn --bind 0.0.0.0:${PORT} django_example_app.wsgi:application --timeout=300
