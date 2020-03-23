class UsersController < ApplicationController
    def index
        users = User.all
        # options = {
        #     include: [:battles]
        # }
        render json: UserSerializer.new(users)
    end

    def show
        user = User.find(params[:id])

        render json: UserSerializer.new(user)
    end

    def create
        user = User.new(username: params[:username], mmr: params[:mmr])

        if user
            user.save
        end
    end
end
