#!/bin/bash

# Build the project
echo "Building the project..."
python3.12.3 -m pip install -r requirements.txt

echo "Make Migration..."
python3.12.3 manage.py makemigrations --noinput
python3.12.3 manage.py migrate --noinput

echo "Collect Static..."
python3.12.3 manage.py collectstatic --noinput --clear