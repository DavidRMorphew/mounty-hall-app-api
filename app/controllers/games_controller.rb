class GamesController < ApplicationController
    def index
        games = Game.all.joins(:user).order(:user_id)
        # order(user_id: :desc)
        render json: GameSerializer.new(games)
        # Game.order(user_win: :desc) [winning on top]
        # Game.order(user_switch: :desc) [user_switch true on top]
    end
end
