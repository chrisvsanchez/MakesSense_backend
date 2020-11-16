class UsersController < ApplicationController

    # def create
       
    # end

    def index 
        @users = User.all 
        render json: @users
    end
    def show
        # byebug
        @user = User.find_by(id: params[:user_id])
        # byebug
        render json: @user
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
