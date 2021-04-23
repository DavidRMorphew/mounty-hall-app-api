class GamesController < ApplicationController
    def create
        Game.create(game_params)
        binding.pry
    end
    
    def index
        games = Game.all.joins(:user).order(:user_id)
        # order(user_id: :desc)
        render json: GameSerializer.new(games)
        # Game.order(user_win: :desc) [winning on top]
        # Game.order(user_switch: :desc) [user_switch true on top]
    end

    private
    def game_params
        params.require(:game).permit(:door1, :door2, :door3, :original_pick, :host_reveal, :user_switch, :user_win, :user_id)
    end
end
