class GamesController < ApplicationController
    def create
        saved_game = Game.create(game_params)
        render json: GameSerializer.new(saved_game)
    end
    
    def index
        if params[:user_id]
            user = User.find_by(id: params[:user_id])
            games = user.games
        else 
            games = Game.ordered_by_user_winning_percentage
        end
        render json: GameSerializer.new(games)
    end

    private
    def game_params
        params.require(:game).permit(:door1, :door2, :door3, :original_pick, :host_reveal, :user_switch, :user_win, :user_id)
    end
end
