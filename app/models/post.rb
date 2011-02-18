class Post < ActiveRecord::Base
  validates_presence_of :title, :postdesc, :content, :category
  has_many :comments
end
