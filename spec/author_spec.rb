require './lib/book'
require './lib/author'

RSpec.describe Author do
	describe '#initialize' do
		it 'exists' do
			charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

			expect(charlotte_bronte).to be_an_instance_of Author
		end

		it "can display the author's name" do
			charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

			expect(charlotte_bronte.name).to eq "Charlotte Bronte"
		end

		it "can display all books from an author" do
			charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

			expect(charlotte_bronte.books).to eq []
		end
	end

	describe '#write' do
    it 'creates a new book object when called' do
			charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
			jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")

      expect(jane_eyre).to be_an_instance_of Book
    end
	end
end