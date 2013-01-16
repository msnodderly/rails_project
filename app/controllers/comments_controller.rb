class CommentsController < ApplicationController
    before_filter :require_user, :only => [:new,:create]

  def index
    @comments = Comment.all
  end


  def show
    @comment = Comment.new
  end

  def create
    
    @comment = Comment.new(params[:comment])
    @post = Post.where(:id => @comment.post_id).first
    @id = params[:comment]

    @comment.user_id = current_user.id
    if @comment.save
      redirect_to @post
    else
      flash[:error] = "You didn't enter a comment!"
      redirect_to @post
    end

  end

end
