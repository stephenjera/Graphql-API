import strawberry
import src.database as db
from datetime import datetime


@strawberry.type
class GroupNameType:
    group_id: int
    group_name: str


@strawberry.type
class ClubsType:
    club_id: int
    club: str


@strawberry.type
class PlayersType:
    player_id: int
    group_id: int
    club_id: int
    first_name: str
    last_name: str
    group_name: GroupNameType
    club: ClubsType

    @strawberry.field
    def group_name(self, info) -> GroupNameType:
        group = db.get_group(self.group_id)
        return GroupNameType(group_id=group.group_id, group_name=group.group_name)

    @strawberry.field
    def club(self, info) -> ClubsType:
        club = db.get_club(self.club_id)
        return ClubsType(club_id=club.club_id, club=club.club)


@strawberry.type
class Query:
    @strawberry.field
    def group_names(self) -> list[GroupNameType]:
        return db.get_all_groups()
    
    @strawberry.field
    def group_names(self) -> list[GroupNameType]:
        return db.get_all_groups()

    @strawberry.field
    def players(self, info) -> list[PlayersType]:
        players = db.get_all_players()
        return [
            PlayersType(
                player_id=player.player_id,
                group_id=player.group_id,
                club_id=player.club_id,
                first_name=player.first_name,
                last_name=player.last_name,
            )
            for player in players
        ]


schema = strawberry.Schema(query=Query)
