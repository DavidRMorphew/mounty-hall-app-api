class UserSerializer
  include FastJsonapi::ObjectSerializer
  has_many :games
  attributes :name, :winning_game_percentage, :switch_percentage
end
