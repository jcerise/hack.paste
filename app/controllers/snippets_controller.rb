class SnippetsController < ApplicationController

	def new
		@snippet = Snippet.new
		@test = "working..."
	end

end
