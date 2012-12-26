class Post < ActiveRecord::Base
  attr_accessible :title, :url, :id
  validates :title,  presence: true
  validates :url,  presence: true

  has_many :comments
  
  before_create :generate_slug

  def to_param
    slug
  end

  def generate_slug
    self.slug = title.split(' ').join('_')
  end

end
