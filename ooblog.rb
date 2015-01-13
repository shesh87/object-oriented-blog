class Blog
	def initialize(title, message)
		@title = title
		@message = message
	end

	def post
		@time = Time.now
		@month = @time.month
		@date = @time.mday
		@year = @time.year
		puts "#{@month} #{@date}, #{@year}"
	end
end

first_post = Blog.new "First Day of Ironhack", "Learned all about Git today."
first_post.post
