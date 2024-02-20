class Author
	attr_reader :author

	def initialize(author_details)
		@author = author_details[:first_name] + " " + author_details[:last_name]
	end

end