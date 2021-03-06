class UsersController < ApplicationController
    def create
        user = User.find_or_create_by(user_params)
        render json: UserSerializer.new(user)
    end
    
    def index
        users = User.ordered_by_game_winning_percentage
        render json: UserSerializer.new(users, include: [:games])
    end
    
    private
    def user_params
        params.require(:user).permit(:name)
    end
end