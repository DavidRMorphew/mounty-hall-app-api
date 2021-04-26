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
            # games = Game.all.joins(:user).order(:user_id)
            games = Game.ordered_by_user_winning_percentage
        end
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
