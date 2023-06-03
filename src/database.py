from google.cloud import bigquery
#import time
from sqlalchemy.exc import OperationalError
from models import Clubs, GroupName, Players
from sqlmodel import SQLModel, create_engine, Session
from sqlmodel import Session, select

# Create a BigQuery client
client = bigquery.Client()

PROJECT_ID = "graphql-land"
DATASET_ID = "football"

# Set the path to your JSON key file
#JSON_KEY_FILE = "../keyfile.json"

# Create an engine and connect to BigQuery
#engine = create_engine(f'bigquery://{PROJECT_ID}', credentials_path=JSON_KEY_FILE)
engine = create_engine(f'bigquery://{PROJECT_ID}')

# @app.get("/")
# async def root():
#     # Define the BigQuery table name
#     TABLE_NAME = f"{PROJECT_ID}.{DATASET_ID}.matches"

#     # Query example
#     query = f"""
#      SELECT *
#      FROM `{TABLE_NAME}`
#     """
#     query_job = client.query(query)

#     # Iterate over the query results
#     result = []
#     for row in query_job:
#         result.append(dict(row))

#     return result

def get_club(club_id: int) -> Clubs:
    with Session(engine) as session:
        club = session.get(Clubs, club_id)
    return club


def get_group(group_id: int) -> GroupName:
    with Session(engine) as session:
        group = session.get(GroupName, group_id)
    return group


# def get_venue(venue_id: int) -> Venues:
#     with Session(engine) as session:
#         venue = session.get(Venues, venue_id)
#     return venue


def get_player(player_id: int) -> Players:
    with Session(engine) as session:
        player = session.get(Players, player_id)
    return player

def get_all_groups() -> list[GroupName]:
    with Session(engine) as session:
        groups = session.exec(select(GroupName)).all()
    return groups


def get_all_clubs() -> list[Clubs]:
    with Session(engine) as session:
        clubs = session.exec(select(Clubs)).all()
    return clubs


def get_all_players() -> list[Players]:
    with Session(engine) as session:
        players = session.exec(select(Players)).all()
    return players