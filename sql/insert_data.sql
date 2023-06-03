INSERT INTO football.cards (player_id, match_id, time_given, colour_id)
VALUES
  (12, 1, '2022-10-01 16:00:00', 1),
  (30, 2, '2022-10-01 16:00:00', 1),
  (1, 3, '2022-10-08 16:00:00', 1),
  (9, 3, '2022-10-08 16:00:00', 1),
  (10, 5, '2022-11-05 16:00:00', 1),
  (38, 5, '2022-11-05 16:00:00', 1),
  (3, 7, '2022-10-22 16:00:00', 1),
  (35, 8, '2022-10-29 16:00:00', 1),
  (23, 9, '2022-10-29 16:00:00', 1),
  (32,10,'2022-11-05 16:00:00',2),
  (1 ,11,'2022-11-05 16:00:00',2),
  (17 ,12,'2022-11-12 16:00:00',1);

INSERT INTO football.clubs (club_id, club)
VALUES
  (1, 'Data Masters'),
  (2, 'BI Gods'),
  (3, 'Vis Wizards'),
  (4, 'Data Cleaners');

INSERT INTO football.colours (colour_id, colour)
VALUES
  (1, 'yellow'),
  (2, 'red');

INSERT INTO football.goals (player_id, match_id, time_scored)
VALUES
  (8, 1, '2022-10-01 16:00:00'),
  (7, 1, '2022-10-01 16:00:00'),
  (27, 2, '2022-10-01 16:00:00'),
  (35, 2, '2022-10-01 16:00:00'),
  (8, 3, '2022-10-08 16:00:00'),
  (8, 3, '2022-10-08 16:00:00'),
  (27, 3, '2022-10-08 16:00:00'),
  (19, 4, '2022-10-08 16:00:00'),
  (17, 4, '2022-10-08 16:00:00'),
  (19, 6, '2022-10-22 16:00:00'),
  (28, 6, '2022-10-22 16:00:00'),
  (27, 6, '2022-10-22 16:00:00'),
  (19 ,7 ,'2022-10-22 16:00:00'),
  (16 ,7 ,'2022-10-22 16:00:00'),
  (8 ,7 ,'2022-10-22 16:00:00'),
  (3 ,7 ,'2022-10-22 16:00:00'),
  (35 ,8 ,'2022-10-29 16:00:00'),
  (25 ,8 ,'2022-10-29 16:00:00'),
  (27 ,8 ,'2022-10-29 16:00:00'),
  (29 ,9 ,'2022-10-29 16:00:00'),
  (29 ,9 ,'2022-10-29 16:00:00'),
  (26 ,9 ,'2022-10-29 16:00:00'),
  (7 ,9 ,'2022-10-29 16:00:00'),
  (8 ,9 ,'2022-10-29 16:00:00'),
  (19, 10, '2022-11-05 16:00:00'),
  (35, 11, '2022-11-05 16:00:00'),
  (37, 11, '2022-11-05 16:00:00'),
  (26, 12, '2022-11-12 16:00:00'),
  (25, 12, '2022-11-12 16:00:00'),
  (19, 12, '2022-11-12 16:00:00'),
  (18, 12, '2022-11-12 16:00:00');

INSERT INTO football.group_name (group_id, group_name)
VALUES
  (1, 'Cohort 4'),
  (2, 'Cohort 5'),
  (3, 'Cohort 6'),
  (4, 'Cohort 7'),
  (5, 'Bench'),
  (6, 'Training Team'),
  (7, 'HR'),
  (8, 'Consultants');

INSERT INTO football.matches (match_id, home_id, away_id, venue_id, date_time, week, friendly, home_score, away_score)
VALUES
  (1, 1, 2, 1, '2022-10-01 16:00:00', 1, FALSE, 2, 0),
  (2, 3, 4, 2, '2022-10-01 16:00:00', 1, FALSE, 1, 1),
  (3, 2, 3, 2, '2022-10-08 16:00:00', 2, FALSE, 2, 1),
  (4, 3, 4, 3, '2022-10-08 16:00:00', 2, FALSE, 2, 1),
  (5, 3, 4, 3, '2022-10-22 16:00:00', 3, FALSE, 0, 0),
  (6, 2, 3, 2, '2022-10-22 16:00:00', 3, FALSE, 1, 2),
  (7, 1, 2, 1, '2022-10-29 16:00:00', 4, FALSE, 2, 2),
  (8, 3, 3, 3, '2022-10-29 16:00:00', 4, FALSE, 1, 2),
  (9, 3, 1, 3, '2022-11-05 16:00:00', 5, FALSE, 3, 2),
  (10, 2, 4, 1, '2022-11-05 16:00:00', 5, FALSE, 0, 1),
  (11, 1, 4, 2, '2022-11-12 16:00:00', 6, FALSE, 2, 0),
  (12, 3, 2, 3, '2022-12-12 16:00:00', 6, FALSE, 2, 2),
  (13, 1, 1, NULL, '2023-11-12 16:00:00', NULL, TRUE, NULL, NULL),
  (14, 3, 2, NULL, '2023-11-12 16:00:00', NULL, TRUE, NULL, NULL);



INSERT INTO football.players (player_id, first_name, last_name, group_id, club_id)
VALUES
  (1, 'Aedan', 'Petty', 1, 1),
  (2, 'Aliza', 'Santos', 3, 1),
  (3, 'Kaylynn', 'Vaughan', 6, 1),
  (4, 'Arjun', 'Bauer', 4, 1),
  (5, 'Lilian', 'Huber', 2, 1),
  (6, 'Lizeth', 'Roberts', 6, 1),
  (7, 'Nathan', 'Mcdowell', 7, 1),
  (8, 'Alvin', 'Ali', 8, 1),
  (9, 'Jordin', 'Christensen', 7, 1),
  (10, 'Saul', 'Blevins', 7, 1),
  (11, 'Carina', 'Meza', 2, 2),
  (12, 'Isabelle', 'Campos', 5, 2),
  (13, 'Kyleigh', 'Phelps', 1, 2),
  (14, 'Angela', 'Wong', 7, 2),
  (15, 'Kole', 'Rojas', 7, 2),
  (16, 'Martha', 'Potts', 4, 2),
  (17, 'Tomas', 'Powell', 6, 2),
  (18, 'Paxton', 'Clarke', 5, 2),
  (19, 'Jamya', 'Dodson', 8, 2),
  (20, 'Georgia', 'Clements', 8, 2),
  (21, 'Edwin', 'Crawford', 2, 3),
  (22, 'Malachi', 'Osborn', 8, 3),
  (23, 'Zion', 'Kent', 2, 3),
  (24, 'Anahi', 'Reyes', 5, 3),
  (25, 'Maddox', 'Cabrera', 8, 3),
  (26, 'Brody', 'Gutierrez', 4, 3),
  (27, 'Hayley', 'Stevenson', 3, 3),
  (28, 'Kamora', 'Sanchez', 8, 3),
  (29, 'Livia', 'Holmes', 6, 3),
  (30, 'Tanner', 'Jenkins', 8, 3),
  (31, 'Madelyn', 'Meadows', 5, 4),
  (32, 'Paola', 'Wilkerson', 3, 4),
  (33, 'Jared', 'Patton', 6, 4),
  (34, 'Pierre', 'Washington', 8, 4),
  (35, 'Dominik', 'Cochran', 4, 4),
  (36, 'Miya', 'Skinner', 4, 4),
  (37, 'Mara', 'Barnett', 5, 4),
  (38, 'Cornelius', 'Dodson', 2, 4),
  (39, 'Ashleigh', 'Kaiser', 6, 4),
  (40, 'Weston', 'Meza', 6, 4);

INSERT INTO football.venues (venue_id, venue)
VALUES
  (1, 'Wimbledon 1'),
  (2, 'Wimbledon 2'),
  (3, 'Wimbledon 3');

