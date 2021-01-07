FROM python:3.8-alpine

LABEL Orca Devops home assignment

WORKDIR /docker-flask

COPY . .

RUN ["pip3", "install", "pipenv"]

RUN ["pipenv", "install"]

CMD ./run_app.sh