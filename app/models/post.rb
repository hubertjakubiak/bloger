class Post < ActiveRecord::Base
  paginates_per 10
  validates_presence_of :title, :body
end
