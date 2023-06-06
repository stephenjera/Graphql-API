from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from strawberry.fastapi import GraphQLRouter
from src.schema import schema

app = FastAPI()
app.include_router(GraphQLRouter(schema=schema, path="/graphql"))

origins = [
    "https://super-portfolio-lyart.vercel.app",
    "https://super-portfolio-git-master-stephenjera.vercel.app",
    "https://super-portfolio-stephenjera.vercel.app",
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
