class Addfirstuser < ActiveRecord::Migration
  def up
    if User.count==0
      User.create(username: "路人",password: "xxx")
    end
  end

  def down
    if User.count==1
      User.delete_all
    end

  end
end
