class DeleteStringFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :string
  end
end
