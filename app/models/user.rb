class User < ApplicationRecord
	has_many :comments
	has_many :votes, as: :votable 
	has_many :votes_made, class_name: 'Vote'
end
