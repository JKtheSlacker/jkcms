class RemoveColumns < ActiveRecord::Migration
  def self.up
    remove_column :posts, :number
    remove_column :comments, :date
  end

  def self.down
    add_column :posts, :number, :integer
    add_column :comments, :date, :datetime
  end
end
