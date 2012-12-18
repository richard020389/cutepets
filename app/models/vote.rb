class Vote < ActiveRecord::Base
  attr_accessible :direct

  belongs_to :pet
  belongs_to :user
end
