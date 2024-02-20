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
		author
	end
end