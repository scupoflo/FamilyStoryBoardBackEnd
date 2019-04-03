class Api::V1::UsersController < ApplicationController

    def index
      @tree = Tree.all
      render json: @tree 
    end
  
    def show
      render json: Tree.find(params[:id])
    end
  
  
  
  
  
  
  end