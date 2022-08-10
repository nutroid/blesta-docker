#!/bin/sh

DIR="/var/www/html"

# If dir is empty, copy blesta application into webroot
if [ "$(ls -A $DIR)" ]; then
    echo "$DIR is not empty, skipping"
else
    echo "Initializing Blesta"
    cp -R /var/www/blesta/. /var/www/html
fi

exec "$@"
