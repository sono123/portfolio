module PostsHelper

	def date_formatter(date)
		date.strftime("%b %d, %Y")
	end

	def category_helper(category_id)
		category = Category.find(category_id)
		category.name
	end

end
