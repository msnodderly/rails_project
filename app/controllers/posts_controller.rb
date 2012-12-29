class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    #@post = Post.find(params[:id])
    @post = Post.where(slug: params[:id]).first
  end

  def create
    @post = Post.new(params[:post])
    if @post.save 
      @status = "success"
    else 
      @status = "failed"
    end

    
  end

end
