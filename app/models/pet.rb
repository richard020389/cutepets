# encoding: UTF-8
class Pet < ActiveRecord::Base
  attr_accessible :url, :title, :topic_name

  has_many :comments
  has_many :votes
  belongs_to :user
  belongs_to :topic

  validates :title, :url, :user_id, :topic_id, presence: true

  def vote_count
    votes.where(direct: "up").count - votes.where(direct: "down").count
  end

  def topic_name
  end
  def topic_name=(value)
    if !value.blank?

      cur_topic = Topic.find_by_topic_name(value)
      if cur_topic
      else
        cur_topic = Topic.create(topic_name: value)
      end
    else
      cur_topic = Topic.find_by_topic_name("瞎扯谈")
    end
    self.topic = cur_topic
  end

end
