class User < ActiveRecord::Base
  attr_accessible :password_digest, :username, :password

  validates :username, :uniqueness => true
  validates :username, :presence => true

  has_secure_password

end
