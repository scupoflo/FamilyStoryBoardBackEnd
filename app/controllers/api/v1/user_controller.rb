class Api::V1::UsersController < ApplicationController

    def index
      @user = User.all
      render json: User.all
    end

    def show
      render json: User.find(params[:id])
    end

    def create
      user = User.create(user_params)
      render json: user, status: 201
    end

    def update
      @user.update(user_params)
      render json: @user, status: 200
    end

    def destroy
      user = User.find(params[:id])
      user.destroy
      render json: {message:"Zap! User deleted", user:user}
    end

    def show
      render json: @user, status: 200
    end

    
  end
