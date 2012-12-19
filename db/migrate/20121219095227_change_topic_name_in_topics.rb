# encoding:  UTF-8
class ChangeTopicNameInTopics < ActiveRecord::Migration
  def change
    topic = Topic.create(topic_name: "瞎扯谈")
    Pet.all.each do |pet|
      if !pet.topic
        pet.update_attribute(:topic,topic)
      end
    end
  end

end
