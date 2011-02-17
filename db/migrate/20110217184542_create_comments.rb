class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.datetime :date
      t.string :name
      t.string :url
      t.text :comment
      t.references :post

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
