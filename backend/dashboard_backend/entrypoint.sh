#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo "Check if database is running..."
    
    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done

    echo "Database is running massive W"
fi 

python manage.py migrate 

exec "$@"