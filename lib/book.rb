require './lib/author'

class Book
	attr_reader :title, :author, :publication_year

	def initialize(book_details)
		@title = book_details[:title]
		@author = book_details[:author_first_name] + " " + book_details[:author_last_name]
		@publication_year = book_details[:publication_date][-4..-1]
	end

end