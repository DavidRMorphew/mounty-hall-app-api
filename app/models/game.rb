class Game < ApplicationRecord
  belongs_to :user

  def user_name
    self.user.name
  end

  def self.ordered_by_user_winning_percentage
    games_grouped_by_user = self.all.joins(:user).order(:user_id)
    ranked = games_grouped_by_user.sort_by {|game| game.user.winning_game_percentage }.reverse

  end
end
