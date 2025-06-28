#!/bin/bash

# Build the project
echo "Building the project..."
pip install -r requirements.txt

echo "Make Migration..."
python manage.py makemigrations
python manage.py migrate 

echo "Collect Static..."
python3.12.3 manage.py collectstatic