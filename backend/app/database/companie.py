from sqlalchemy import Column, Table
from sqlalchemy.sql.sqltypes import Integer, String, Date
from app.database.database import meta, engine

companie = Table(
    "companies",
    meta,
    Column("companie_id", Integer, primary_key=True),
    Column("name_fantasy", String),
    Column("corporate_name", String),
    Column("cnpj", String, index=True),
    Column("email", String),
    Column("phone", String),
    Column("zip", String),
    Column("street", String),
    Column("number", Integer),
    Column("state", String),
    Column("district", String),
    Column("city", String)
)

meta.create_all(engine)

