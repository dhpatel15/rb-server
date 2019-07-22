class Comment < ApplicationRecord
	belongs_to :user
	has_many :comment_votes dependent: :destroy
end
