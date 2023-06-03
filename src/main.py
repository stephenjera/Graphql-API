from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from strawberry.fastapi import GraphQLRouter
from src.schema import schema

app = FastAPI()
app.include_router(GraphQLRouter(schema=schema, path="/graphql"))
