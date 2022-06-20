from sqlalchemy import create_engine, MetaData

SQLALCHEMY_DATABASE_URL = "mysql+pymysql://admin2:JymCHS8Ku.bh]knO@localhost/aflooens"

engine = create_engine(
    SQLALCHEMY_DATABASE_URL
)

meta = MetaData()

conn = engine.connect()
