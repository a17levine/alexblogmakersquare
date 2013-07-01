class PostsController < ApplicationController

	def index
		@name = "Alex Levine"
		@posts = Post.all
	end
end