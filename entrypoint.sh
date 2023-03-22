#!/bin/sh
# entrypoint.sh

# Run migrations
python ./app/manage.py migrate
python ./app/manage.py runserver
# Then run the main container command (passed to us as arguments)
exec "$@"
