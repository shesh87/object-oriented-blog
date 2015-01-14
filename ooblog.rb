# module History
# 	def post_history(post_creation)
# 		@message = post_creation
# 		puts message
# 	end
# end

class Blog
	attr_reader :history
	
	def front_page(text)
		# blog.post_history
		@text = text
		puts "#{text}\n-------------------------\n#{@history}"
		# history.push(text)
	end
	def initialize
		@history = []
	end
	def add_post(post)
		@message = post
		@history.each do |message|
			front_page(message)
		end
	end
end
#receives a post and add to history

class Post
	attr_reader :title, :text, :post

	def initialize(title, text)
		@title = title
		@text = text
	end

	def date
		time = Time.now
		month = time.month
		date = time.mday
		year = time.year
		return "#{month} #{date}, #{year}"
	end

	def create_post
		date = date()
		post = "\n#{date}\n#{@title}\n*************************\n#{@text}"
		# front_page(post)
		# @history.push(post)
	end
end





# _____________________________________________________________________________________________________


blog = Blog.new

puts "Create Your blog Post!"
puts "Yes or No?"
answer = (gets.chomp).downcase

if answer == "yes"
	puts "\nEnter title"
	title = gets.chomp
	puts "Write the post"
	text = gets.chomp
	blog_post = Post.new(title, text)
	blog_post.create_post
	blog.add_post()

else
	puts "Thanks for posting today!\n"
end

while answer != "no"
	puts "Create Your blog Post!"
	puts "Yes or No?"
	answer = (gets.chomp).downcase

	if answer == "yes"
		puts "\nEnter title"
		title = gets.chomp
		puts "Write the post"
		text = gets.chomp
		blog_post = Post.new(title, text)
		blog_post.create_post
	else
		puts "Thanks for posting today!\n"
	end	
end




# first_post = Post.new "Day 1 of Ironhack", "Learned all about Git today."
# second_post = Post.new "Day 2 of Ironhack", "Fummabled with module Relationships."
# third_post = Post.new "Day 3 of Ironhack", "Be better than yesterday. Hehe."


