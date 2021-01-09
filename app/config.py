import os
basedir = os.path.abspath(os.path.dirname(__file__))

class Config:
    SQLALCHEMY_DATABASE_URI = ("postgres://"+ os.environ['DB_USER'] + ":" 
                                         + os.environ['DB_PASS']+ "@" 
                                         + os.environ['DB_HOST'] 
                                         + ":5432/app.db")
    SQLALCHEMY_TRACK_MODIFICATIONS = False
