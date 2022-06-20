from fastapi import HTTPException
from app.database.database import conn
from app.database.vehicle import vehicle
from app.database.log import log
from app.types.vehicle_type import Vehicle
from .ivehicle_repository import IVehicleRepository

class VehicleRepository(IVehicleRepository):

    @staticmethod
    def create(data: Vehicle):
        try:
            return conn.execute(vehicle.insert().values(data))
        except Exception:
            raise HTTPException(500, detail="Error as occurred")

    @staticmethod
    def view(id: int):
            return conn.execute(vehicle.select().where(vehicle.c.vehicle_id == id))


    @staticmethod
    def viewAll():
        return conn.execute(vehicle.select())

    @staticmethod
    def udapte(id: int, data: Vehicle):
        try:
            return conn.execute(vehicle.update().values(data).where(vehicle.c.vehicle_id == id))
        except Exception:
            raise HTTPException(500, detail="Error as occurred")

    @staticmethod
    def delete(id: int):
        try:
            return conn.execute(vehicle.delete().where(vehicle.c.vehicle_id == id))
        except Exception:
            raise HTTPException(500, detail="Error as occurred")