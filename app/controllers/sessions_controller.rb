class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(name: params[:user][:name])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to '/'
        else 
            flash[:notice] = "login is incorrect"
            redirect_to signup_path
        end
    end

    def destroy
    end

end
