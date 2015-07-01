# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "open-uri"

categories = ["Automotive", "Technology", "Hardware", "Aircraft", "Opinion", "Design", "Development"]

categories.each do |category|
	Category.create(name: category)
end

10.times do
	post = Post.create(category_id: rand(1..5),
					 title: Faker::Lorem.sentence(3),
					 author: "Steve Ono",
					 body: Faker::Lorem.paragraph(10),
					 featured: true
					 )
	pic = post.pictures.new({:post_id => post.id})
	pic.image = URI.parse("http://lorempixel.com/600/400/")
	pic.save
end

PortfolioPiece.create(category_id: 6,
											 title: "Gamma Grafix, Inc.",
											 image_url: 'portfolio-1.png',
											 body: Faker::Lorem.paragraph(10)
											)

PortfolioPiece.create(category_id: 6,
											 title: "Gamma Grafix, Inc.",
											 image_url: 'portfolio-3.png',
											 body: Faker::Lorem.paragraph(10)
											)

PortfolioPiece.create(category_id: 6,
											 title: "Japan Printing & Graphics, Inc.",
											 image_url: 'portfolio-5.png',
											 body: Faker::Lorem.paragraph(10)
											)

PortfolioPiece.create(category_id: 6,
											 title: "Life-like Slider",
											 image_url: 'portfolio-2.png',
											 body: Faker::Lorem.paragraph(10)
											)

PortfolioPiece.create(category_id: 7,
											 title: "Webmail Client",
											 image_url: 'portfolio-6.png',
											 body: Faker::Lorem.paragraph(10),
											 custom_partial: 'webmail_demo'
											)

PortfolioPiece.create(category_id: 7,
											 title: "Oauth2 Authorization",
											 image_url: 'portfolio-7.png',
											 body: Faker::Lorem.paragraph(10),
											 custom_partial: 'oauth2_demo'
											)

PortfolioPiece.create(category_id: 6,
											 title: "Ultimate Street Video Player",
											 image_url: 'portfolio-4.png',
											 body: Faker::Lorem.paragraph(10)
											)



