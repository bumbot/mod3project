class UsersController < ApplicationController
    def index
        users = User.all
        options = {
            include: [:battles]
        }
        render json: UserSerializer.new(users, options)
    end
end
