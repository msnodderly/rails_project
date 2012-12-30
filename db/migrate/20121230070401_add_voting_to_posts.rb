class AddVotingToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :upvotes, :int
    add_column :posts, :downvotes, :int
  end
end
