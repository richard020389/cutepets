class Pet < ActiveRecord::Base
  attr_accessible :url,:title 

  has_many :comments
end
