#!/bin/sh

# migrate the database
pipenv run flask db init
pipenv run flask db migrate
pipenv run flask db upgrade

# run the app
export FLASK_APP=app.py 
exec pipenv run python app.py
