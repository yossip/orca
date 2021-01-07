import os
basedir = os.path.abspath(os.path.dirname(__file__))

class Config:
    SQLALCHEMY_DATABASE_URI = os.environ.get('DATABASE_URL', f'postgres://{os.path.join(basedir, "app.db")}') or None
    SQLALCHEMY_TRACK_MODIFICATIONS = False
