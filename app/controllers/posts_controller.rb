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
      @status = "success"
    else 
      @status = "failed"
    end
  end

  def create_comment
    @comment = Comment.new(params[:comment])
    @id = params[:comment]
    @comment.save
  end

end
