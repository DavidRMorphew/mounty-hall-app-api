class Game < ApplicationRecord
  belongs_to :user

  def user_name
    self.user.name
  end

  # Do ordering on frontend? Might be better on frontend so that I don't have to do new fetch to get this each time
  # games_grouped_by_user = self.all.order(:user_id)
  # ranked = games_grouped_by_user.sort_by {|game| game.user.winning_game_percentage }.reverse
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
