class FixPostCategory < ActiveRecord::Migration
  def self.up
    change_column :posts, :category, :string
    Post.reset_column_information
  end

  def self.down
    change_column :posts, :category, :text
    Post.reset_column_information
  end
end
