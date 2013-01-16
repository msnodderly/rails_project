class PostsController < ApplicationController
  before_filter :require_user, :only => [:new,:create]
  def index
    @posts = Post.all
    @vote = Vote.new
  end


  def new
    @post = Post.new
  end

  def show
    @post = Post.where(slug: params[:id]).first
    @comment = Comment.new

  end

  def create
    @post = Post.new(params[:post])
    @post.user = current_user
    if @post.save 
      redirect_to @post
    else 
      flash[:error] = "There is a problem with your submission"
      redirect_to :submit
    end
  end

end
