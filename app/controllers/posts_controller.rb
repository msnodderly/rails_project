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
    @comment = Comment.new

  end

  def create
    @post = Post.new(params[:post])
    if @post.save 
      redirect_to @post
    else 
      flash[:error] = "There is a problem with your submission"
      redirect_to :submit
    end
  end

end
