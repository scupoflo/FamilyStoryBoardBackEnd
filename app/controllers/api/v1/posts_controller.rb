class Api::V1::PostsController < ApplicationController

    def index
      @posts = Post.all
      render json: @posts
    end

    def show
      render json: Post.find(params[:id])
    end

    def create
    post = Post.create!(post_params)
    render json: post, status: 201
    end

    # def create
    #
    #   @post = Post.new(
    #     title: params[:post][:title],
    #     author_id: params[:post][:author_id],
    #     subject: params[:post][:subject],
    #     body: params[:post][:body],
    #     picture: params[:post][:picture]
    #   )
    #   byebug
    #   if @post.valid?
    #     @post.save
    #     render json: @post, status: :accepted
    #   end
    # end

    def update
    set_post
    @post.update(post_params)
    render json: @post, status: 200
    end

    def destroy
      post = Post.find(params[:id])
      post.delete
      render json: {post:post}
    end

    def show
      render json: @post, status: 200
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.permit(:title, :body, :picture, :subject, :author_id, user: {})
    end
  end

  # :something =>{} == something: {}
