# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
# ...
Product.create(title: 'Programming Ruby 1.9',
	description:
	%{<p>
		Ruby is the fastest growing and most exciting dynamic language
		out there. If you need to get working programs delivered fast,
		you should add Ruby to your toolbox.
		</P>},
	image_url: 'ruby.jpg',
	price: 49.95)
#...
Product.create(title: 'JavaScript Devinitiv Guide',
	description:
	%{<p>
		Web frontend engneer must read this book. covering HTML5.
		</P>},
	image_url: 'js.jpg',
	price: 29.95)
#...
Product.create(title: 'Agile development with Ruby on rails 4.0 ',
	description:
	%{<p>
		Fast web development and latest development technology is 
		all in this book.
	</P>},
	image_url: 'js.jpg',
	price: 29.95)