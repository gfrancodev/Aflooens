from typing import  Optional
from pydantic import BaseModel

class Model(BaseModel):
    model_id: Optional[int]
    automaker_id: int
    name: str