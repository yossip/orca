FROM python:3.8-alpine

LABEL Orca Devops home assignment

WORKDIR /docker-flask

RUN apk update && apk add --no-cache postgresql-dev gcc python3-dev musl-dev
RUN pip install psycopg2-binary pipenv Flask Flask-SQLAlchemy 
RUN rm -vrf /var/cache/apk/*
COPY . .
RUN pipenv install --system --deploy

CMD ./run_app.sh