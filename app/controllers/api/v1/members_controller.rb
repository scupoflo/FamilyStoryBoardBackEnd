class Api::V1::MembersController < ApplicationController

    def index
      @members = Member.all
      render json: @members
    end
  
    def show
      render json: Member.find(params[:id])
    end
  
    def create
      member = Member.create(member_params)
      render json: member, status: 201
    end
  
    def update
      @member.update(member_params)
      render json: @member, status: 200
    end
  
    def destroy
      member = Member.find(params[:id])
      member.destroy
      render json: {message:"Zap! Member deleted", member:member}
    end
  
    def show
      render json: @member, status: 200
    end
  
    private
    def member_params
      params.permit(:tree_owner_id,:group_id, :family_member_id, :relationship)
    end
  
    def set_note
      @member = Member.find(params[:id])
    end
  end
  
  