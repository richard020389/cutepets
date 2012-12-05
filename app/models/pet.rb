class Pet < ActiveRecord::Base
  attr_accessible :url,:title 

  has_many :comments
  has_one :vote
end
