from sqlalchemy import Column, Table
from sqlalchemy.sql.sqltypes import Integer, String, Date
from app.database.database import meta, engine

vehicle = Table(
    "vehicles", meta,
    Column("vehicle_id", Integer, primary_key=True),
    Column("model_id", Integer),
    Column("ports_number", Integer),
    Column("color", String),
    Column("automaker_id", Integer),
    Column("year_model", Integer),
    Column("year_manufacture", Integer),
    Column("board", String),
    Column("chassi", String),
    Column("created_at", Date)
)

meta.create_all(engine)