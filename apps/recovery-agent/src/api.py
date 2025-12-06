from fastapi import FastAPI
from src.brain import init_db, store, fetch

app = FastAPI(title="Digital Damage Recovery Agent")

init_db()

@app.get("/")
def root():
    return {"status": "online", "product": "Recovery Agent"}

@app.post("/log")
def log_entry(category: str, key: str, value: str, notes: str = ""):
    store(category, key, value, notes)
    return {"status": "logged"}

@app.get("/intel/{category}")
def get_intel(category: str):
    return fetch(category)
