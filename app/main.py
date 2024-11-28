from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello, CI/CD with FastAPI!"}

@app.get("/health")
def health_check():
    return {"status": "healthy"}