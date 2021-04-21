class UsersController < ApplicationController
    def index
        users = User.all
        render json: UserSerializer.new(users, include: [:games])
    end
    
    def show
        user = User.find(params[:id])
        render json: UserSerializer.new(user)
    end

    def create
        binding.pry
        # User.find_or_create_by(name: params[:username])
    end

    private
    def user_params
        params.require(:user).permit(:name)
    end
end