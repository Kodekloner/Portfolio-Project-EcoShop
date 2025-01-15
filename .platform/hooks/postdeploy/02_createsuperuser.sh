#!/bin/bash

# Ensure the script exits on errors
set -e

echo "Creating Django superuser..."

# Activate virtual environment
# source /var/app/venv/*/bin/activate

source "$PYTHONPATH/activate" && {

    # Run superuser creation only on the leader instance
    if [[ $EB_IS_COMMAND_LEADER == "true" ]]; then
        python manage.py shell <<EOF
    from accounts.models import Account
    Account.objects.create_superuser(
        'Billgate',
        'Okoye',
        'billgateokoye@gmail.com',
        'admin',
        '123456'
    )
    EOF
    else
        echo "This instance is not the leader. Skipping superuser creation."
    fi

}
