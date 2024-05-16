from fastapi import FastAPI, Response, HTTPException
from pydantic import BaseModel as Model
from datetime import datetime

app = FastAPI()

class Responser(Model):
    detail: str
    data: object

class Client(Model):
    id: int
    firstname: str
    lastname: str
    cell_number: str
    current_time: str

@app.get('/crm/client')
async def get_client():

    client = Client(id=402458,
                    firstname="Alireza",
                    lastname="Azizi",
                    cell_number='00145396848',
                    current_time=datetime.now().strftime('%Y-%m-%d %H:%M:%S')
                    )
    
    return Responser(detail="your action successful", data=client)