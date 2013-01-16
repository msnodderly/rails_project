class AddUseridToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :userid, :int
  end
end
