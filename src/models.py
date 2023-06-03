from sqlmodel import SQLModel, Field
from datetime import datetime

DATASET_ID = "football"

class GroupName(SQLModel, table=True):
    __tablename__ = f"{DATASET_ID}.group_name"
    group_id: int | None = Field(default=None, primary_key=True)
    group_name: str

class Clubs(SQLModel, table=True):
    __tablename__ = f"{DATASET_ID}.clubs"
    club_id: int | None = Field(default=None, primary_key=True)
    club: str

class Players(SQLModel, table=True):
    __tablename__ = f"{DATASET_ID}.players"
    player_id: int | None = Field(default=None, primary_key=True)
    group_id: int | None = Field(default=None, foreign_key="group_name.group_id")
    club_id: int | None = Field(default=None, foreign_key="clubs.club_id")
    first_name: str
    last_name: str