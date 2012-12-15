class Comments < ActiveRecord::Base
  attr_accessible :content

  belongs_to :posts
end
