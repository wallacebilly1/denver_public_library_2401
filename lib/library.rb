require './lib/book'
require './lib/author'

class Library
	attr_reader :name, :books, :authors

	def initialize(library_name)
		@name = library_name
		@books = []
		@authors = []
	end

	def add_author(author)
		@authors << author
		author.books.each do |book|
			@books << book
		end
	end

	def publication_time_frame(author)
		author.books.min_by do |book|
			book.publication_year.to_i
		end
	end

	def first_book_year(author)
		first_book = author.books.min_by do |book|
			book.publication_year.to_i
		end
		first_book.publication_year
	end

	def last_book_year(author)
		last_book = author.books.max_by do |book|
			book.publication_year.to_i
		end
		last_book.publication_year
	end
end