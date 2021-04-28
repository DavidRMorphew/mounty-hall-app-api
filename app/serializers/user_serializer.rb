class UserSerializer
  include FastJsonapi::ObjectSerializer
  has_many :games
  attributes :name, :winning_game_percentage, :switch_percentage, :switch_and_win_percentage, :stay_and_win_percentage
end
