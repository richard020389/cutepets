class CreatePets < ActiveRecord::Migration
  def up
    create_table :pets do |t|
      t.string :url
      t.string :title
      t.timestamps
    end
  end

  def down
    drop_table :pets
  end
end
