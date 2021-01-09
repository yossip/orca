FROM python:3.8-alpine

LABEL Orca Devops home assignment

WORKDIR /docker-flask

COPY . .

RUN ["pip3", "install", "pipenv"]

RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev && pip install psycopg2

RUN ["pipenv", "install"]

CMD ./run_app.sh