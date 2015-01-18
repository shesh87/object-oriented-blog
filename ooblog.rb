# module History
# 	def post_history(post_creation)
# 		@message = post_creation
# 		puts message
# 	end
# end

class Blog
	attr_reader :history
	
	def front_page(text)
		@text = text.reverse
		puts "#{text}\n-------------------------\n"
	end
	def initialize
		@history = []
	end
	def add_post(post)
		@history.push(post)
		@history.reverse.each do |message|
			front_page(message)
		end
		#how to run thru an array backwards? 
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
		return time.strftime("%A %B %d, %Y")
	end

	def create_post
		date = date()
		post = "\n#{date}\n#{@title}\n*************************\n#{@text}"
	end

	# def date
	# 	d = Date.now
	# 	puts "#{d}"
	# end
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
	new_post = blog_post.create_post
	blog.add_post(new_post)

elsif answer == "no"
	puts "Thanks for posting today!\n"
else
	puts "Please enter a correct answer."
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
		new_post = blog_post.create_post
		blog.add_post(new_post)

	elsif answer == "no"
		puts "Thanks for posting today!\n"
	else
		puts "Please enter a correct answer."
	end
end






first_post = Post.new "Day 1 of Ironhack", "Learned all about Git today."
second_post = Post.new "Day 2 of Ironhack", "Fummabled with module Relationships."
third_post = Post.new "Day 3 of Ironhack", "Be better than yesterday. Hehe."


