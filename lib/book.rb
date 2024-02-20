class Book
	attr_reader :title

	def initialize(book_details)
		@title = book_details[:title]
	end

end