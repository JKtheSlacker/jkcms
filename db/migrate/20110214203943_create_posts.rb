class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.date :date
      t.integer :number
      t.string :title
      t.text :postdesc
      t.text :content
      t.text :category

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
