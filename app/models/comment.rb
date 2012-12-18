class Comment < ActiveRecord::Base
  attr_accessible :content

  belongs_to :pet
  belongs_to :user
  validates :content, presence:true
end
