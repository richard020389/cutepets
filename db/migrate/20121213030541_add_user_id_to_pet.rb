class AddUserIdToPet < ActiveRecord::Migration
  def change
      add_column :pets,:user_id,:integer
      Pet.all.each do |f|
        f.update_attribute(:user_id,1)
      end
  end
end
