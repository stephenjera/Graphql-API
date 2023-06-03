CREATE TABLE football.group_name (
  group_id INT64 NOT NULL,
  group_name STRING,
) OPTIONS(
  description="A table to store group information"
);

CREATE TABLE football.clubs (
  club_id INT64 NOT NULL,
  club STRING,
) OPTIONS(
  description="A table to store club information"
);

CREATE TABLE football.players (
  player_id INT64 NOT NULL,
  group_id INT64,
  club_id INT64,
  first_name STRING,
  last_name STRING,
) OPTIONS(
  description="A table to store player information"
);

CREATE TABLE football.venues (
  venue_id INT64 NOT NULL,
  venue STRING,
) OPTIONS(
  description="A table to store venue information"
);

CREATE TABLE football.matches (
  match_id INT64 NOT NULL,
  home_id INT64,
  away_id INT64,
  venue_id INT64,
  date_time TIMESTAMP,
  week INT64,
  friendly BOOL,
  home_score INT64,
  away_score INT64,
) OPTIONS(
  description="A table to store match information"
);

CREATE TABLE football.colours (
  colour_id INT64 NOT NULL,
  colour STRING,
) OPTIONS(
  description="A table to store colour information"
);

CREATE TABLE football.cards (
  player_id INT64,
  match_id INT64,
  colour_id INT64,
  time_given TIMESTAMP
) OPTIONS(
  description="A table to store card information"
);

CREATE TABLE football.goals (
  player_id INT64,
  match_id INT64,
  time_scored TIMESTAMP
) OPTIONS(
    description="A table to store goal information"
);