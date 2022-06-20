from app.types.vehicle_type import Vehicle

class IVehicleRepository:

    @staticmethod
    def create(vehicle: Vehicle):
        pass

    @staticmethod
    def view(id: int):
        pass

    @staticmethod
    def viewAll():
        pass

    @staticmethod
    def update(id: int, data: Vehicle):
        pass

    @staticmethod
    def delete(id: int):
        pass