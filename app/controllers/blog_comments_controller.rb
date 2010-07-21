class BlogCommentsController < ApplicationController
	
	before_filter :authenticate, :only => [:destroy]
	
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.blog_comments.create(params[:blog_comment])
		redirect_to post_path(@post)
	end
	
	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.blog_comments.find(params[:id])
		@comment.destroy
		redirect_to post_path(@post)
	end
	
end
