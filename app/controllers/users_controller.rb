class UsersController < ApplicationController
    def index
        users = User.all
        options = {
            include: [:battles]
        }
        render json: UserSerializer.new(users, options)
    end

    def show
        user = User.find(params[:id])

        render json: UserSerializer.new(user)
    end
end
