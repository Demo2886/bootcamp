#!/bin/sh
# entrypoint.sh

# Run migrations
python ./manage.py migrate
python ./manage.py runserver
# Then run the main container command (passed to us as arguments)
exec "$@"
