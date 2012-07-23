class Post < ActiveRecord::Base
  # attr_accessible :title, :body
	belongs_to :user, :foreign_key => "user_id"
	
end
