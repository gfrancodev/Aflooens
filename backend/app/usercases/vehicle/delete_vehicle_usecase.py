from app.repositories.ivehicle_repository import IVehicleRepository


class DeleteVehicleUsecase:
    def __int__(self, VehicleRepository):
        self.vehicle_repository: IVehicleRepository = VehicleRepository()

    def execute(self, id):
        return self.vehicle_repository.delete(id)