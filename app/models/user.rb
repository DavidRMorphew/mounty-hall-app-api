class User < ApplicationRecord
    has_many :games

    def winning_game_percentage
        user_games_won = self.games.where(user_win: true).count 
        user_games_total = self.games.count
        if (user_games_total != 0)
            win_percentage = (user_games_won.to_f / user_games_total.to_f) * 100
        else
            win_percentage = 0.0
        end
    end

    def self.ordered_by_game_winning_percentage
        self.all.sort_by do |user| 
            user.winning_game_percentage
        end.reverse
    end
end
