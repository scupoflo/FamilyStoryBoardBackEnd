class Api::V1::GroupsController < ApplicationController

    def index
      @groups = Group.all
      render json: @groups
    end
  
    def show
      render json: Group.find(params[:id])
    end
  
    def create
      group = Group.create(group_params)
      render json: group, status: 201
    end
  
    def update
      @group.update(group_params)
      render json: @group, status: 200
    end
  
    def destroy
      group = Group.find(params[:id])
      group.destroy
      render json: {message:"Zap! Group deleted", group:group}
    end
  
    def show
      render json: @group, status: 200
    end
  
    private
    def group_params
      params.permit(:group_id,:tree_id, :name)
    end
  
    def set_goal
      @group = Group.find(params[:id])
    end
  end
  
  