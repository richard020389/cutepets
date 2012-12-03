class Comment < ActiveRecord::Base
  attr_accessible :content,:pet_id

  belongs_to :pet
end
