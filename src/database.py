from src.models import Clubs, Cards, Colours, GroupName, Venues, Players, Matches, Goals
from sqlmodel import create_engine, Session
from sqlmodel import Session, select

PROJECT_ID = "graphql-land"
DATASET_ID = "football"

# Set the path to your JSON key file
# JSON_KEY_FILE = "keyfile.json"

# Create an engine and connect to BigQuery
#engine = create_engine(f"bigquery://{PROJECT_ID}", credentials_path=JSON_KEY_FILE)
engine = create_engine(f'bigquery://{PROJECT_ID}')


def get_club(club_id: int) -> Clubs:
    with Session(engine) as session:
        club = session.get(Clubs, club_id)
    return club


def get_group(group_id: int) -> GroupName:
    with Session(engine) as session:
        group = session.get(GroupName, group_id)
    return group


def get_venue(venue_id: int) -> Venues:
    with Session(engine) as session:
        venue = session.get(Venues, venue_id)
    return venue


def get_player(player_id: int) -> Players:
    with Session(engine) as session:
        player = session.get(Players, player_id)
    return player


def get_match(match_id: int) -> Matches:
    with Session(engine) as session:
        match = session.get(Matches, match_id)
    return match


def get_colour(colour_id: int) -> Colours:
    with Session(engine) as session:
        colour = session.get(Colours, colour_id)
    return colour


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


def get_all_matches() -> list[Matches]:
    with Session(engine) as session:
        matches = session.exec(select(Matches)).all()
    return matches


def get_all_cards() -> list[Cards]:
    with Session(engine) as session:
        cards = session.exec(select(Cards)).all()
    return cards


def get_all_goals() -> list[Goals]:
    with Session(engine) as session:
        goals = session.exec(select(Goals)).all()
    return goals
