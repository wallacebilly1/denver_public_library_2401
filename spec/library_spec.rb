require './lib/book'
require './lib/author'
require './lib/library'

RSpec.describe Library do
	before(:each) do 
		@dpl = Library.new("Denver Public Library")
		@charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
		@jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
		@professor = @charlotte_bronte.write("The Professor", "1857")
		@villette = @charlotte_bronte.write("Villette", "1853")
		@harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
		@mockingbird = @harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
	end

	describe '#initialize' do
		it 'exists' do
			expect(@dpl).to be_an_instance_of Library
		end

		it 'can display the library name' do
			expect(@dpl.name).to eq "Denver Public Library"
		end

		it 'starts with an empty array of books and authors by default' do
			expect(@dpl.authors).to eq []
		end
	end

	describe '#add_author' do
		it 'can add an author to the authors array' do
			expect(@dpl.authors).to eq []
			
			@dpl.add_author(@charlotte_bronte)
			@dpl.add_author(@harper_lee)

			expect(@dpl.authors).to eq [@charlotte_bronte, @harper_lee]
		end
	end

	describe '#books' do
		it 'can add books to the books array' do
			expect(@dpl.books).to eq []
			
			@dpl.add_author(@charlotte_bronte)
			@dpl.add_author(@harper_lee)

			expect(@dpl.books).to eq [@jane_eyre, @professor, @villette, @mockingbird]
		end
	end
end