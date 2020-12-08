require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end



def num_points_scored(playername)
  game_hash.each do |team,team_hash|        #team = home or away, team_hash is the team information hash
    team_hash[:players].each do |player|    #access each :player hash within the team_hash setting block param to player 
      if player[:player_name] == playername #if the one of the player hashes at :player_name == argued playername
        return player[:points]              #then return that players :points value
      end
    end
  end
end



def shoe_size(playername)
 game_hash.each do |team,team_hash|        #team = home or away, team_hash is the team information hash
   team_hash[:players].each do |player|    #access each :player hash within the team_hash setting block param to player 
     if player[:player_name] == playername #if the one of the player hashes at :player_name == argued playername
       return player[:shoe]                #then return that players :shoe value
     end
    end
  end
end



def team_colors(team)
  game_hash.each do |home_or_away,team_hash|  #home or away teams, team_hash is the team information hash
    if team_hash[:team_name] == team          #if the team name contained within team_hash == argued team 
      return team_hash[:colors]               #then return the :colors value from team_hash
    end
  end
end



def team_names
  teams = []                                 #new empty array 
  teams[0] = game_hash[:home][:team_name]    #for index 0 store the home teams team_name
  teams[1] = game_hash[:away][:team_name]    #for index 1 store the away teams team_name
  teams                                      #call the final array
end



def player_numbers(team)
  jersey_numbers = []                         #new empty array
  game_hash.each do |home_or_away,team_hash|  #home or away teams, team_hash is the team information hash
    if team_hash[:team_name] == team          #if the :team_name value == the argued team
      team_hash[:players].each do |player|    #then iterate through each :players hash and  
        jersey_numbers.push(player[:number])  #place that player hash jersey number into the new array 
      end 
    end
  end 
jersey_numbers                                #then return the jersey numbers of that team 
end



def player_stats(playername)                   
  game_hash.each do |home_or_away, team_hash|  #home or away teams, team_hash is the team information hash
  team_hash[:players].each do |player|         #iterate through each :player hash 
     if player[:player_name] == playername     #and if the :player_name == the argued playername
       return player                           #then return that player hash
      end
    end 
  end 
end



def big_shoe_rebounds 
  biggest_shoe = 0                            #variable to store the biggest shoe value as iterating 
  rebounds = 0                                #variable to store the rebound correlated to biggest_shoe as iterating
  game_hash.each do |home_or_away, team_hash| #home or away teams, team_hash is the team information hash
  team_hash[:players].each do |player|        #iterate through each :player hash
     if player[:shoe] > biggest_shoe          #and see if that players :shoe value is > the last iteration starting with 0 
      biggest_shoe = player[:shoe]            #if true then store that players :shoe value in biggest_shoe variable 
      rebounds = player[:rebounds]            #and store that players :rebounds value in rebound variable 
   end                                        #looping through and overwriting if line 206 is true 
  end
 end
 rebounds                                     #call the final rebounds after iterating through each 
end

def most_points_scored
  most_points = 0                             #variable to store the biggest shoe value as iterating 
  player_name_most_points = ""                                #variable to store the rebound correlated to biggest_shoe as iterating
  game_hash.each do |home_or_away, team_hash| #home or away teams, team_hash is the team information hash
  team_hash[:players].each do |player|        #iterate through each :player hash
     if player[:shoe] > biggest_shoe          #and see if that players :shoe value is > the last iteration starting with 0 
      biggest_shoe = player[:shoe]            #if true then store that players :shoe value in biggest_shoe variable 
      rebounds = player[:rebounds]
  
end

def winning_team
  
end

def player_with_longest_name
  
end

def long_name_steals_a_ton?
  
end
  