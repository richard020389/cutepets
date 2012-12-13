class Pet < ActiveRecord::Base
  attr_accessible :url,:title 

  has_many :comments
  has_one :vote
  belongs_to :user

  validates :title,:url, presence: true
end
