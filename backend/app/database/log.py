from sqlalchemy import Column, Table
from sqlalchemy.sql.sqltypes import Integer, String, Date
from app.database.database import meta, engine

log = Table(
    "logs", meta,
    Column("log_id", Integer, primary_key=True),
    Column("companie_id", Integer),
    Column("vehicle_id", Integer),
    Column("created_at", Date),
    Column("finish_at", Date)
)

meta.create_all(engine)