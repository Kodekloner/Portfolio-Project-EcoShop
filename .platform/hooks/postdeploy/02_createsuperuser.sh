#!/bin/bash

# Ensure the script exits on errors
set -e

echo "Creating Django superuser..."

# Activate virtual environment
# source /var/app/venv/*/bin/activate

source "$PYTHONPATH/activate" && {

    # Run superuser creation only on the leader instance
    if [[ $EB_IS_COMMAND_LEADER == "true" ]]; then
        echo "from accounts.models import Account;
        Account.objects.create_superuser('first_name', 'last_name', 'yourusername', 'password')" | python manage.py shell
    else
        echo "This instance is not the leader. Skipping superuser creation."
    fi

}
