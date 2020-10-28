# Write your code below game_hash
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

# Write code here

def num_points_scored(player)
  game_hash.each do |key, value|
    value[:players].each do |players_stats|
        if players_stats[:player_name] == player
          return players_stats[:points]
        end
      end
    end
end



def get_players
  game_hash[:home][:players].concat(game_hash[:away][:players])
end


def shoe_size(players_name)
  right_player = get_players.find do |player_info|
    player_info[:player_name] == players_name
  end
  # binding.pry
  right_player[:shoe]
end


def team_colors(name)
  game_hash.map do |key, team|
      if team[:team_name] == name
        return team[:colors]
      end
    end
end


def team_names
  [game_hash[:home][:team_name], game_hash[:away][:team_name]]
end

def player_numbers(t_name)
  game_hash.map do |key, team|
    if team[:team_name] == t_name
      return team[:players].map do |player_stats|
        player_stats[:number]
      end
    end
  end
end


def player_stats(p_name)
  get_players.find do |value|
    if value[:player_name] == p_name
      return value
    end
  end
end


def player_numbers(t_name)
  game_hash.map do |key, team|
    if team[:team_name] == t_name
      return team[:players].map do |player_stats|
        player_stats[:number]
      end
    end
  end
end


def big_shoe_rebounds
  big_shoe = get_players.max_by{|player| player[:shoe] }
  return big_shoe[:rebounds]
  binding.pry
end


#   students = [ { name: "Mary Jones", test_score: 80, sport: "soccer" }, { name: "Bob Kelly", test_score: 95, sport: "basketball" }, { name: "Kate Saunders", test_score: 99, sport: "hockey" }, { name: "Pete Dunst", test_score: 88, sport: "football" } ]
#
# students.max_by{|k| k[:test_score] }
# #=> {:name=>"Kate Saunders", :test_score=>99, :sport=>"hockey"}
#
# students.max_by{|k| k[:test_score] }[:name]
# #=> "Kate Saunders"
