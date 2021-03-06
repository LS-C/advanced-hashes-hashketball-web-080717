# Write your code here!
require 'pry'

def game_hash
  game_hash = {
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
        }, {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        }, {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        }, {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        }, {
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
        }, {
          player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        }, {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        }, {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        }, {
          player_name: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def get_all_players_from_team_hashes(team_hashes)
  players = []
  team_hashes.each do |team|
    team[:players].each do |player|
      players << player
    end
  end
  players
end

def get_team_hashes()
  game_hash.values
end

def num_points_scored(name)
  team_hashes = get_team_hashes()
  players = get_all_players_from_team_hashes(team_hashes)
  found_player = players.find {|player| player[:player_name] == name}
  found_player[:points]
end


def shoe_size(name)
  team_hashes = get_team_hashes()
  players = get_all_players_from_team_hashes(team_hashes)
  found_player = players.find {|player| player[:player_name] == name}
  found_player[:shoe]
end

def team_colors(team_n)
  team_hashes=get_team_hashes()
  team=team_hashes.find {|team| team[:team_name] == team_n}
  team[:colors]
end

def team_names
  t=[]
  team_hashes=get_team_hashes()
  team_hashes.each do |team|
    t<<team[:team_name]
  end
  t
end

def player_numbers(name)
  players=[]
  jersey_numbers=[]
  team_hashes=get_team_hashes()
  t=team_hashes.find { |team| team[:team_name] == name}
  t[:players].each do |player|
    jersey_numbers<<player[:number]
  end
  jersey_numbers
end

def player_stats(name)
  team_hashes=get_team_hashes()
  players = get_all_players_from_team_hashes(team_hashes)
  a=players.find { |player| player[:player_name]==name}
  a.delete(:player_name)
  a
end

def big_shoe_rebounds
  shoe_sizes=[]
  team_hashes = get_team_hashes()
  players = get_all_players_from_team_hashes(team_hashes)
    players.each do |player|
      shoe_sizes<<player[:shoe]
    end
  a=players.find { |player| player[:shoe]==shoe_sizes.max }
  a[:rebounds]

end
