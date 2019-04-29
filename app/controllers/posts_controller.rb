class PostsController < ApplicationController
  before_action :set_post, only: :show

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(title: params[:title], description: params[:description])

    redirect_to post_path(@post)
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
end
