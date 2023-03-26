class SessionsController < ApplicationController

    def create
        
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        render json: user

    end

    # why are we doing .delete instead of .destroy??
    def destroy
        session.delete :user_id
        head :no_content
    end
end