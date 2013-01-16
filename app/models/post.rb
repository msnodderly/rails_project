class Post < ActiveRecord::Base
  attr_accessible :title, :url, :id
  validates :title,  presence: true
  validates :url,  presence: true

  has_many :comments
  has_many :votes

  belongs_to :user
  
  before_create :generate_slug

  def points
    votes.inject(0) { |sum, t| sum + t.vote }
  end


  def to_param
    slug
  end

  def generate_slug
    self.slug = title.split(' ').join('_')
  end

end
