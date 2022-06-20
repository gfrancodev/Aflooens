from app.repositories.ivehicle_repository import IVehicleRepository
from app.types.vehicle_type import Vehicle


class CreateVehicleUsecase:
    def __int__(self, VehicleRepository):
        self.create_vehicle_repository: IVehicleRepository = VehicleRepository()

    def execute(self, data: Vehicle):
        return self.create_vehicle_repository.create(data)