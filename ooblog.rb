class Blog
	# include message
	def front_page
		puts "#{@message}\n------------"
	end
end


class Post
	attr_reader :title, :text, :message

	def initialize(title, text)
		@title = title
		@text = text
	end

	def date
		@time = Time.now
		@month = @time.month
		@date = @time.mday
		@year = @time.year
		return "#{@month} #{@date}, #{@year}"
	end

	def post_message
		@date = date()
		@message = "#{@date}\n#{@title}\n************************\n#{@text}"
	end
end

module message < Post
	def send_post
		
	end
end


blog = Blog.new
blog.front_page

first_post = Post.new "Day 1 of Ironhack", "Learned all about Git today."
second_post = Post.new "Day 2 of Ironhack", "Fummabled with module Relationships."
third_post = Post.new "Day 3 of Ironhack", "Be better than yesterday. Hehe."
first_post.post_message
# second_post.post_message
# third_post.post_message




