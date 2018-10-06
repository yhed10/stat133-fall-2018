#Title : nba2018

[mainsource](www.basketball-reference.com)


###Sample link
[GSW](https://www.basketball-reference.com/teams/GSW/2018.html)
[BOS](https://www.basketball-reference.com/teams/BOS/2018.html)
[CLE](https://www.basketball-reference.com/teams/CLE/2018.html)
[TOR](https://www.basketball-reference.com/teams/TOR/2018.html)
[WAS](https://www.basketball-reference.com/teams/WAS/2018.html)
[ATL](https://www.basketball-reference.com/teams/ATL/2018.html)
[MIL](https://www.basketball-reference.com/teams/MIL/2018.html)
[IND](https://www.basketball-reference.com/teams/IND/2018.html)
[CHI](https://www.basketball-reference.com/teams/CHI/2018.html)
[MIA](https://www.basketball-reference.com/teams/MIA/2018.html)
[DET](https://www.basketball-reference.com/teams/DET/2018.html)
[CHO](https://www.basketball-reference.com/teams/CHO/2018.html)
[NYK](https://www.basketball-reference.com/teams/NYK/2018.html)
[ORL](https://www.basketball-reference.com/teams/ORL/2018.html)
[PHI](https://www.basketball-reference.com/teams/PHI/2018.html)
[BRK](https://www.basketball-reference.com/teams/BRK/2018.html)
[SAS](https://www.basketball-reference.com/teams/SAS/2018.html)
[HOU](https://www.basketball-reference.com/teams/HOU/2018.html)
[LAC](https://www.basketball-reference.com/teams/LAC/2018.html)
[UTA](https://www.basketball-reference.com/teams/UTA/2018.html)
[OKC](https://www.basketball-reference.com/teams/OKC/2018.html)
[MEM](https://www.basketball-reference.com/teams/MEM/2018.html)
[POR](https://www.basketball-reference.com/teams/POR/2018.html)
[DEN](https://www.basketball-reference.com/teams/DEN/2018.html)
[NOP](https://www.basketball-reference.com/teams/NOP/2018.html)
[DAL](https://www.basketball-reference.com/teams/DAL/2018.html)
[SAC](https://www.basketball-reference.com/teams/SAC/2018.html)
[MIN](https://www.basketball-reference.com/teams/MIN/2018.html)
[BRK](https://www.basketball-reference.com/teams/BRK/2018.html)
[LAL](https://www.basketball-reference.com/teams/LAL/2018.html)
[PHO](https://www.basketball-reference.com/teams/PHO/2018.html)

- `player`: first and last names of player 
- `number`: number on jersey
- `team`: 3-letter team abbreviation
- `position`: player’s position
- `height`: height in feet-inches
- `weight`: weight in pounds
- `birth_date`: date of birth (“Month day, year”)
- `country`: 2-letter country abbreviation
- `experience`: years of experience in NBA (a value of R means rookie) 
- `college`: attended college in USA
- `salary`: player salary in dollars
- `rank`: Rank of player in his team
- `age`: Age of Player at the start of February 1st of that season.
- `games`: Games Played furing regular season
- `sames_started`: Games Started
- `minutes`: Minutes Played during regular season
- `field_goals`: Field Goals Made
- `field_goals_atts`: Field Goal Attempts
- `field_goals_perc`: Field Goal Percentage
- `points3`: 3-Point Field Goals
- `points3_atts`: 3-Point Field Goal Attempts
- `points3_perc`: 3-Point Field Percentage
- `points2`: 2-Point Field Goals
- `points2_atts`: 2-Point Field Goal Attempts
- `points2_perc`: 2-Point Field Goal Percentage
- `effective_field_goal_perc`: Effective Field Goal Percentage
- `points1`: Free Throws Made
- `points1_atts`: Free Throw Attempts
- `points1_perc`: Free Throw Percentage
- `off_rebounds`: Offensive Rebounds
- `def_rebounds`: Defensive Rebounds
- `assists`: Assists
- `steals`: Steals
- `blocks`: Blocks
- `turnovers`: Turnovers
- `fouls`: Fouls
- `points`: Total points

|     Name     |                         Description                        | Units of measurement | Possible missing values |
|:------------:|:----------------------------------------------------------:|:--------------------:|:-----------------------:|
|   `player`   |               first and last names of player               |       character      |            NO           |
|   `number`   |                      number on jersey                      |       character      |            NO           |
|    `team`    |                 3-letter team abbreviation                 |       character      |            NO           |
|  `position`  |                      player’s position                     |       character      |            NO           |
|   `height`   |                    height in feet-inches                   |        inches        |            NO           |
|   `weight`   |                      weight in pounds                      |        pounds        |            NO           |
| `birth_data` |              date of birth (“Month day, year”)             |         date         |            NO           |
|   `country`  |                2-letter country abbreviation               |       character      |            NO           |
| `experience` |   years of experience in NBA (a value of R means rookie)   |        integer       |            NO           |
|   `college`  |                   attended college in USA                  |       character      |           Yes           |
|   `salary`   |                  player salary in dollars                  |        dollar        |            NO           |
|    `rank`    |                 Rank of player in his team                 |        integer       |            NO           |
|     `age`    | Age of Player at the start of February 1st of that season. |        integer       |            NO           |
|    `games`   |             Games Played furing regular season             |        integer       |            NO           |
|       `sames_started`       |             Games Started            | integer |  NO |
|          `minutes`          | Minutes Played during regular season | integer |  NO |
|        `field_goals`        |           Field Goals Made           | integer |  NO |
|      `field_goals_atts`     |          Field Goal Attempts         | integer |  NO |
|      `field_goals_perc`     |         Field Goal Percentage        | integer | YES |
|          `points3`          |          3-Point Field Goals         | integer |  NO |
|        `points3_atts`       |      3-Point Field Goal Attempts     | integer |  NO |
|        `points3_perc`       |       3-Point Field Percentage       | integer | YES |
|          `points2`          |          2-Point Field Goals         | integer |  NO |
|        `points2_atts`       |      2-Point Field Goal Attempts     | integer |  NO |
|        `points2_perc`       |     2-Point Field Goal Percentage    | integer | YES |
| `effective_field_goal_perc` |    Effective Field Goal Percentage   | integer | YES |
|          `points1`          |           Free Throws Made           | integer |  NO |
| `points1_atts` |  Free Throw Attempts  | integer | NO  |
| `points1_perc` | Free Throw Percentage | integer | YES |
| `off_rebounds` | Offensive Rebounds    | integer | NO  |
| `def_rebounds` | Defensive Rebounds    | integer | NO  |
| `assists`      | Assists               | integer | NO  |
| `steals`       | Steals                | integer | NO  |
| `blocks`       | Blocks                | integer | NO  |
| `turnovers`    | Turnovers             | integer | NO  |
| `fouls`        | Fouls                 | integer | NO  |
| `points`       | Total points          | integer | NO  |