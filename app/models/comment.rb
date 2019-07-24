class Comment < ApplicationRecord
	belongs_to :user
	has_many :comment_votes, as: :votable 
end
