require './lib/book'
require './lib/author'
require './lib/library'

RSpec.describe Library do
	describe '#initialize' do
		it 'exists' do
			dpl = Library.new("Denver Public Library")
			expect(dpl).to be_an_instance_of Library
		end
	end
end