require './lib/book'

RSpec.describe Book do
	before(:each) do 
		@book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
	end

  describe '#initialize' do
    it 'exists' do
      expect(@book).to be_an_instance_of Book
    end

		it 'can display the title' do
			expect(@book.title).to eq "To Kill a Mockingbird"
		end

		it 'can display the author' do
			expect(@book.author).to eq "Harper Lee"
  	end	
	end
end