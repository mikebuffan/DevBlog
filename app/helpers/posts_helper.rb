module PostsHelper
	def join_blog_tags(post)
		post.blog_tags.map { |t| t.name }.join(", ")
	end
	
end
