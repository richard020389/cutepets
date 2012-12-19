class AddTopicIdToPets < ActiveRecord::Migration
  def change
    add_column :pets, :topic_id, :integer
  end
end
