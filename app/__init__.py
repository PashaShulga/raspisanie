from bottle import Bottle
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker, scoped_session
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()
engine = create_engine("sqlite:///database_v3.db",
                       echo=True,
                       convert_unicode=True)

session = scoped_session(sessionmaker(autocommit=False,
                                      bind=engine))

app = Bottle()
# conn = engine.connect()
Base.query = session.query_property()
from app import route, model
Base.metadata.create_all(bind=engine)
