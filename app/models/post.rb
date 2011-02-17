class Post < ActiveRecord::Base
  validates_presence_of :title, :postdec, :content, :category
  validates_length_of :title, :minimum => 5
end
