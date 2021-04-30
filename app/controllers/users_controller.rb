class UsersController < ApplicationController
    def index
        users = User.ordered_by_game_winning_percentage
        render json: UserSerializer.new(users, include: [:games])
    end
    
    # def show
    #     binding.pry
    #     user = User.find(params[:id])
    #     render json: UserSerializer.new(user)
    # end

    def create
        user = User.find_or_create_by(user_params)
        render json: UserSerializer.new(user)
    end

    private
    def user_params
        params.require(:user).permit(:name)
    end
end