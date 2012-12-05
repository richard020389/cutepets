class AddPetIdToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :pet_id, :integer
  end
end
