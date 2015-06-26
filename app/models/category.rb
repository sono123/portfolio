class Category < ActiveRecord::Base
	has_many :posts, inverse_of: :category
	has_many :portfolio_pieces, inverse_of: :category
end
