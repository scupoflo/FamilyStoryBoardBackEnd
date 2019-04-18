class Api::V1::MembersController < ApplicationController

    def index
      @members = Member.all
      render json: @members
    end

    def show
      render json: Member.find(params[:id])
    end

    def create
      @group = Group.find_by(name: params[:group])
      member_info = params[:member]
      if @group != nil
        member_info[:group_id] = @group.id
        member = Member.create!(member_params)
        # member = Member.create!(member_params)
        render json: member, status: 201

      end
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
      params.require(:member).permit(:relationship, :name, :picture, :group_id)
    end

    def set_note
      @member = Member.find(params[:id])
    end
  end
