from fastapi import FastAPI
import random

app = FastAPI()

@app.get("/")
def read_root():
    return {"Mensaje": "¡Bienvenido al Banco Serverless V1!"}

@app.get("/saldo")
def get_saldo():
    # Simulamos consultar una base de datos
    saldo = random.randint(100, 5000)
    return {"usuario": "Invitado", "saldo_disponible": saldo, "moneda": "USD"}

@app.get("/health")
def health_check():
    return {"status": "ok"}