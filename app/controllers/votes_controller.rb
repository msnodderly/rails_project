class VotesController < ApplicationController
  before_filter :require_user, :only => [:create]


  def index
    @votes = Vote.all
  end

  def create
    @vote = Vote.new(params[:vote])
    @vote.user = current_user
    if @vote.duplicate?
      flash[:error] = "Duplicate vote detected"
    elsif not @vote.save then
      flash[:error] = "There is a problem with your submission"
    end
    redirect_to :root

  end

end
