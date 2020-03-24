class SessionsController < ApplicationController
    def new
    end
 
    def create
        user = User.find_by(username: params[:username])

        if user
            session[:user_id] = user.id
            render json: user.id
        else
            newUser = User.create(username: params[:username], mmr: 0)
            session[:user_id] = newUser.id
            render json: newUser.id
        end
    end

    def logout
        session.clear
    end
end