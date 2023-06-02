import sys
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    python_version = sys.version
    return {"message": f"Hello, World! Running on Python {python_version}"}
