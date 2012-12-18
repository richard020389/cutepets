class RefactVote < ActiveRecord::Migration
  def up
    add_column :votes, :direct, :string, default:"up"
    add_column :votes, :user_id, :integer
    remove_column :votes, :vote_count, :integer
  end

  def down
    remove_column :votes, :direct, :string
    remove_column :votes, :user_id, :integer
    add_column :votes, :vote_count, :integer, :default => 0
  end
end
