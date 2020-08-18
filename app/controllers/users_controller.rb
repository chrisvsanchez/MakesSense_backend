class UsersController < ApplicationController

    def index 
        @users = User.all 
        render json: @users

    end

    def login
        # byebug
        @user = User.find_by(username: params[:usernameInput])
        if @user 
            render json: @user
        else
            render json: {error: "WRONG DUDE"}
        end
    end
end
