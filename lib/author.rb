class Author
	attr_reader :name

	def initialize(author_details)
		@name = author_details[:first_name] + " " + author_details[:last_name]
	end

end