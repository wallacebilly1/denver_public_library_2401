require './lib/book'

RSpec.describe Book do

  let (:book) { Book.new }

  describe '#initialize' do
    it 'exists' do
      expect(book).to be_an_instance_of Book
    end
  end
end