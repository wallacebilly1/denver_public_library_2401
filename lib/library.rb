require './lib/book'
require './lib/author'

class Library
	attr_reader :name

	def initialize(library_name)
		@name = library_name
	end
end