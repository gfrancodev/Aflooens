from typing import List, Union
from fastapi import APIRouter, Query
from app.usercases import createVehicleUsecase, updateVehicleUsecase, deleteVehicleUsecase, viewVehicleUsecase
from app.types.vehicle_type import Vehicle

vehicle = APIRouter(
    prefix="/vehicle",
    tags=["Vehicles"]
)


@vehicle.get("/", status_code=201, responses=None)
def view_all_vehicle(q: Union[List[str], None] = Query(default=None)):
    query_items = {"q": q}
    return query_items

@vehicle.post("/", status_code=201, responses=None)
def create_vehicle(vehicle: Vehicle) -> None:
    createVehicleUsecase.execute(vehicle.dict())
    return

@vehicle.get("/{vehicle_id}", status_code=200)
def view_vehicle(vehicle_id: int):
    return viewVehicleUsecase.execute(vehicle_id)

@vehicle.put("/{vehicle_id}", status_code=200)
def update_vehicle(vehicle_id: int, data: Vehicle):
    updateVehicleUsecase.execute(vehicle_id)
    return { "id": vehicle_id, "data": data }

@vehicle.delete("/{vehicle_id}", status_code=204, responses=None)
def delete_vehicle(vehicle_id: int) -> None:
    deleteVehicleUsecase.execute(vehicle_id)
    return