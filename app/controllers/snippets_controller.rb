class SnippetsController < ApplicationController

	def new
		@snippet = Snippet.new
		@languages = ['HTML', 'CSS', 'Javascript', 'Java', 'PHP', 'Coffeescript',
						'Sass (Scss)', 'Bash', 'C', 'C++', 'Python', 'SQL', 'HTTP',
					    'Ruby', 'C#', 'Go']
	end

	def create
		@snippet = Snippet.new(snippet_params)
		@snippet.user_id = current_user.id
		if @snippet.save
			# Handle a successful save
			redirect_to @snippet
		else
			@languages = ['HTML', 'CSS', 'Javascript', 'Java', 'PHP', 'Coffeescript',
						'Sass (Scss)', 'Bash', 'C', 'C++', 'Python', 'SQL', 'HTTP',
					    'Ruby', 'C#', 'Go']
			render 'new'
		end
	end

	def show
		@snippet = Snippet.find(params[:id])
		@snippet.code = '<pre class="line-numbers"><code class="language-ruby">' + @snippet.code + '</code></pre>'

		rescue ActiveRecord::RecordNotFound
  			redirect_to '/', :alert => "Record not found..."
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
