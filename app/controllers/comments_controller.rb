class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end


  def show
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params[:comment])
    @post = Post.where(:id => @comment.post_id)
    @id = params[:comment]
    @comment.save
  end

end
