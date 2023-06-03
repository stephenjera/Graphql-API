from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from strawberry.fastapi import GraphQLRouter
from src.schema import schema
#from database import create_db_and_tables

app = FastAPI()
app.include_router(GraphQLRouter(schema=schema, path="/graphql"))


