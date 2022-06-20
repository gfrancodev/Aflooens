from typing import Optional, List
from pydantic import BaseModel
from app.types.model_type import Model

class Vehicle(BaseModel):
    vehicle_id: Optional[int]
    model_id: int
    ports_number: int
    color: str
    automaker_id: int
    year_model: int
    year_manufacture: int
    board: str
    chassi: str
    created_at: str

class VehicleId(BaseModel):
    vehicle_id: int

class VehicleFilter(BaseModel):
    models: List[Model]
    vehicles: List[Vehicle]
