class Vote < ActiveRecord::Base
  attr_accessible :vote_count

  belongs_to :pet
end
