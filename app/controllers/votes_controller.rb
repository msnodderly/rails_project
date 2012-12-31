class VotesController < ApplicationController

  def index
    @votes = Vote.all
  end

  def create
    @vote = Vote.new(params[:vote])
    @vote.save

    redirect_to :root

  end

end
