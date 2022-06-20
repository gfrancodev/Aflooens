from app.repositories.ivehicle_repository import IVehicleRepository


class ViewVehicleUsecase:
    def __int__(self, VehicleRepository):
        self.create_vehicle_repository: IVehicleRepository = VehicleRepository()

    def execute(self, id: int):
        return self.create_vehicle_repository.view(id)