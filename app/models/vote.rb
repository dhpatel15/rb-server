class Vote < ApplicationRecord
	belongs_to: notable, polymorphic: true 
end
