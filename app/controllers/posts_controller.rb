class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def show
    #@post = Post.find(params[:id])
    @post = Post.where(slug: params[:id]).first
  end

end
