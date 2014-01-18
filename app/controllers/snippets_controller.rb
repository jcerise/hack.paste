class SnippetsController < ApplicationController

	def new
		@snippet = Snippet.new
	end

	def create
		@snippet = Snippet.new(snippet_params)
		@snippet.user_id = current_user.id
		if @snippet.save
			# Hanlde a successful save
			redirect_to @snippet
		else
			render 'new'
		end
	end

	def show
		@snippet = Snippet.find(params[:id])
	end

	private

	##
	# Set the paramaters to permit the HTTP request
	##
	def snippet_params
		params.require(:snippet).permit(:title, :description, :language, :code, 
			:private)
	end

end
