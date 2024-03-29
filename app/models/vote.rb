class Vote < ActiveRecord::Base
  attr_accessible :post_id, :vote
  validates :vote, presence: true
  validates :post_id, presence: true

  validates :vote, :inclusion => { :in => [1, -1],
        :message => "%{value} is not a valid vote" }

  belongs_to :post
  belongs_to :user

  def duplicate?
      Vote.where(post_id: post_id, user_id: user_id, vote: vote).last
  end


end
