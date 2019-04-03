class Api::V1::UsersController < ApplicationController

    def index
        render json: User.includes(:members), include: ['members']
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
  
    private
    def user_params
      params.permit(:id, :name, :picture)
    end
  
    def set_note
      @user = User.find(params[:id])
    end
  end
  
  