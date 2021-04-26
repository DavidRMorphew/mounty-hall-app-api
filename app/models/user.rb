class User < ApplicationRecord
    has_many :games

    def winning_game_percentage
        user_games_won = self.games.where(user_win: true).count
        user_games_total = self.games.count
        win_percentage = (user_games_won.to_f / user_games_total.to_f) * 100
    end
end
