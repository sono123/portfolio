module PostsHelper

	def date_formatter(date)
		date.strftime("%b %d, %Y, %H, %M")
	end

	def category_helper(category_id)
		category = Category.find(category_id)
		category.name
	end

	def approved?(post)
		if post.approved != true
			" not_approved hide"
		else
			" approved"
		end
	end

	def format_html(content)
		content.gsub!("\r\n", "")
	end

end
