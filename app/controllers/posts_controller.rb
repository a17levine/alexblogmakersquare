class PostsController < ApplicationController

	def index
		@name = "Alex Levine"
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def edit
		@post = Post.find(params[:id]) 
	end

	def update
		@post = Post.find(params[:id]) 


		if @post.update_attributes(params[:post])
			@message = "this shiz worked"
			render action: "show"
		else
			render action: 'edit'
		end
	end

	def create
		@post = Post.new(params[:post])
		if @post.save
			redirect_to @post
		else
			render action: 'new', error: "No dice homie"
		end
	end

	def delete
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path
	end
end
