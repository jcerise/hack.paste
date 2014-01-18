class SnippetsController < ApplicationController

	def new
		@snippet = Snippet.new
	end

	def create
		@snippet = Snippet.new(snippet_params)
		if @snippet.save
			# Hanlde a successful save
		else
			render 'new'
		end
	end

	##
	# Set the paramaters to permit the HTTP request
	##
	def snippet_params
		params.require(:snippet).permit(:title, :description, :language, :code, 
			:private)
	end

end
