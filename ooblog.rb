class Blog
	def front_page(text)
		@text = text
		puts "#{text}\n-------------------------"
	end
end


class Post < Blog
	attr_reader :title, :text, :message

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
		message = "#{date}\n#{@title}\n*************************\n#{@text}"
		front_page(message)
	end
end






first_post = Post.new "Day 1 of Ironhack", "Learned all about Git today."
second_post = Post.new "Day 2 of Ironhack", "Fummabled with module Relationships."
third_post = Post.new "Day 3 of Ironhack", "Be better than yesterday. Hehe."

# first_post.create_post

blog = Blog.new
blog.front_page()




