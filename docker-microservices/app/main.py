from fastapi import FastAPI
from app.config import settings
from fastapi.encoders import jsonable_encoder
import sqlalchemy as db

app = FastAPI(debug=True)

SQLALCHEMY_DATABASE_URL = settings.DATABASE_URL
engine = db.create_engine(SQLALCHEMY_DATABASE_URL)
connection = engine.connect()
metadata = db.MetaData()
cars = db.Table('cars', metadata, autoload=True, autoload_with=engine)
query = db.select([cars])


@app.get('/')
async def root():
    result = connection.execute(query)
    return jsonable_encoder(result.fetchall())


