from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from app.usercases.vehicle.controllers.vehicle_controller import vehicle

app = FastAPI(
    title="Vehicles API",
    description="A REST API using python and mysql with SOLID ARCHITECTURE",
    version="0.0.1",
    openapi_tags=[
      {
        "name": "Vehicles",
        "description": "vehicles endpoint"
      }
    ],
)
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(vehicle)
