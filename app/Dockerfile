FROM python:3.8-alpine

LABEL Orca Devops home assignment

WORKDIR /docker-flask

RUN apk update && \
    apk add --no-cache --virtual build-deps gcc musl-dev postgresql-dev
COPY . .
RUN pip install pipenv
RUN pipenv install --deploy --system 
RUN pipenv install flask psycopg2-binary
EXPOSE 5000
CMD ./run_app.sh