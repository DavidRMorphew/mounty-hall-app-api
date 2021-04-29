class Game < ApplicationRecord
  belongs_to :user

  def user_name
    self.user.name
  end

  def self.ordered_by_user_winning_percentage
    games = []
    User.ordered_by_game_winning_percentage.each do |user|
      user.games.each do |game|
        games.push(game)
      end
    end
    games
  end
end
