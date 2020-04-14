#!/bin/bash


set -e
cmd="$@"

# Run database migration
bin/dj.sh migrate


echo "All ready"

exec $cmd
