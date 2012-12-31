class Vote < ActiveRecord::Base
  attr_accessible :post_id, :vote
  validates :vote, presence: true
  belongs_to :post

end
