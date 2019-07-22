class User < ApplicationRecord

	has_many :comments
	has_many: user_vote
	has_many: comment_votes
end
