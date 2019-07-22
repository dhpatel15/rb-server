class Comment < ApplicationRecord
	belongs_to :user
	has_many :votes, as: :notable 
end
