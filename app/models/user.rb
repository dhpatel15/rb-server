class User < ApplicationRecord
	has_many :comments
	has_many :user_votes, as: :votable 
	has_many :comment_votes, as: :votable, :class_name => 'Vote'
end
