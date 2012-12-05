class CreateVote < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :vote_count , default: 0
      t.timestamps
    end
  end

end
