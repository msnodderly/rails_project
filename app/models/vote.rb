class Vote < ActiveRecord::Base
  attr_accessible :post_id, :vote
  belongs_to :post
end
