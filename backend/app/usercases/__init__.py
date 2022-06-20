from app.usercases.vehicle.create_vehicle_usecase import CreateVehicleUsecase
from app.usercases.vehicle.view_vehicle_usecase import ViewVehicleUsecase
from app.usercases.vehicle.delete_vehicle_usecase import DeleteVehicleUsecase
from app.usercases.vehicle.update_vehicle_usecase import UpdateVehicleUsecase
from app.repositories.vehicle_repository import VehicleRepository

createVehicleUsecase = CreateVehicleUsecase()
createVehicleUsecase.vehicle_repository = VehicleRepository

viewVehicleUsecase = ViewVehicleUsecase()
viewVehicleUsecase.vehicle_repository = VehicleRepository

updateVehicleUsecase = UpdateVehicleUsecase()
updateVehicleUsecase.vehicle_repository = VehicleRepository

deleteVehicleUsecase = DeleteVehicleUsecase()
deleteVehicleUsecase.vehicle_repository = VehicleRepository

