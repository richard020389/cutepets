class User < ActiveRecord::Base
  attr_accessible :username,:password

  has_secure_password

  validates :username,uniqueness:true

  has_many :pets
  has_many :votes
  has_many :comments

end
