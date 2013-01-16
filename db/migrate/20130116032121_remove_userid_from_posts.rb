class RemoveUseridFromPosts < ActiveRecord::Migration
  def up
    remove_column :posts, :userid
  end

  def down
  end
end
