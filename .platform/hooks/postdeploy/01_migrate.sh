#!/bin/bash

# Ensure the script exits on errors
set -e

echo "Running Django migrations..."

# Activate virtual environment
# source /var/app/venv/*/bin/activate

source "$PYTHONPATH/activate" && {
    # Run migrations only on the leader instance
    if [[ $EB_IS_COMMAND_LEADER == "true" ]]; then
        python manage.py migrate --noinput
    else
        echo "This instance is not the leader. Skipping migrations."
    fi
}