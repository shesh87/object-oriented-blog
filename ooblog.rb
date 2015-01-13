class Blog
	def front_page
		puts "This is my blog"
		
		# puts "------------"
	end
end


# class Post
# 	attr_reader :title, :message

# 	def initialize(title, message)
# 		@title = title
# 		@message = message
# 	end

# 	def date
# 		@time = Time.now
# 		@month = @time.month
# 		@date = @time.mday
# 		@year = @time.year
# 		return "#{@month} #{@date}, #{@year}"
# 	end

# 	def post_message
# 		puts "#{@title}\n************\n#{@message}\n------------"
# 	end
# end


blog = Blog.new
blog.front_page
# first_post = Post.new "Day 1 of Ironhack", "Learned all about Git today."
# second_post = Post.new "Day 2 of Ironhack", "Fummabled with module Relationships."
# third_post = Post.new "Day 3 of Ironhack", "Be better than yesterday. Hehe."
# first_post.post_message


