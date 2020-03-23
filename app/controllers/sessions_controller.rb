class SessionsController < ApplicationController
    def new
    end
 
    def create
        user = User.find_by(username: params[:username])

        if user
            session[:user_id] = user.id
            # render
        else
            flash[:notice] = "No user found with that username"
            # render
        end
    end

    def logout
        session.clear

        redirect_to
    end
end