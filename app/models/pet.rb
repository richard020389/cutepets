class Pet < ActiveRecord::Base
  attr_accessible :url,:title 

  has_many :comments
  has_many :votes
  belongs_to :user

  validates :title,:url, presence: true

  def vote_count
    votes.where(direct: "up").count - votes.where(direct: "down").count
  end
end
