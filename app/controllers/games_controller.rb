class GamesController < ApplicationController
    def index
        # orders games according to user
        games = Game.all.order(user_id: :desc)
        render json: GameSerializer.new(games)
        # use the current user to put that user at the top
        # Game.order(user_win: :desc) [winning on top]
        # Game.order(user_switch: :desc) [user_switch true on top]
    end
end
