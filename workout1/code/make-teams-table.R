#title: Team table
#description: New team table
#input(s): data file "nba2018.csv"
#output(s): data file "make-teams-table.R"

dat <- read.csv('/Users/mac/workout1/data/nba2018.csv', stringsAsFactors = FALSE)

#experience should be of type character because of the presence of the R values that indicate rookie players. Replace all the occurrences of "R" with 0, and then convert the entire column into integers.
dat$experience <- as.character(dat$experience)
dat$experience[dat$experience == "R"] <- "0"
dat$experience <- as.integer(dat$experience)

#salary is originally measured in dollars. Transform salary so that you have salaries in millions: e.g. 1000000 should be converted to 1
dat$salary <- round(dat$salary / 1000000, 2)
summary(dat$salary)

#position should be a factor with 5 levels: 'C', 'PF', 'PG', 'SF', 'SG'. Relabel these factors using more descriptive names (see below):
#– center instead of C
#– power_fwd instead of PF
#– point_guard instead of PG – small_fwd instead of SF
#– shoot_guard instead of SG

pos_labels <- c( "center", 
                 "power_fwd", 
                 "point_guard", 
                 "small_fwd", 
                 "shoot_guard"
                 )
dat$position <- factor(dat$position, labels = pos_labels)

#Adding new variables

library('dpylr')
dat <- mutate(dat,missed_fg = field_goals_atts-field_goals)
dat <- mutate(dat,missed_ft = points1_atts-points1)
dat <- mutate(dat,rebounds = off_rebounds + def_rebounds)
dat <- mutate(dat,efficiency = (points + rebounds + assists + steals + blocks - missed_fg - missed_ft - turnovers) / games)

#
sink(file = '../output/efficiency-summary.txt')
summary(dat$efficiency)
sink()



teams <- summarise(group_by(dat,team),experience = round(sum(experience),2),salary = round(sum(salary),2),
          points3 = sum(points3),points2 = sum(points2),points1 = sum(points1),
          points = sum(points),off_rebounds = sum(off_rebounds),
          def_rebounds = sum(def_rebounds),assists = sum(assists),steals = sum(steals),
          blocks = sum(blocks),turnovers = sum(turnovers),fouls = sum(fouls),
          efficiency = sum(efficiency))

sink(file = '../data/teams-summary.txt')
summary(teams)
sink()

sink(file = '../data/nba2018-teams.csv')    
write.csv(teams)
sink()


