#!/usr/bin/env bash
if [[ "$PORT" = "" ]]; then
  PORT='8000'
fi

bin/dj.sh runserver 0.0.0.0:${PORT}
