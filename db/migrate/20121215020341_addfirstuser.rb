class Addfirstuser < ActiveRecord::Migration
  def up
    if User.count==0
      User.create(username: "Passers-by",password: "xxx")
    end
  end

  def down
    if User.count==1
      User.delete_all
    end

  end
end
