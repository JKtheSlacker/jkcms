class ConvertDbNames < ActiveRecord::Migration
  def self.up
    rename_column :comments, :name, :nombre
    rename_column :comments, :comment, :comentario
    rename_column :comments, :url, :sitio
  end

  def self.down
    rename_column :comments, :nombre, :name
    rename_column :comments, :comentario, :comment
    rename_column :comments, :sitio, :url
  end
end
