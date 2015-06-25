require_relative 'formatting.rb'

describe Formatting do

	it 'reads text from the file' do
		formatter = Formatting.new("input.txt")
		expect(formatter.text_from_file.length).to eq(22)
	end

	it 'makes an array of strings by line' do
		formatter = Formatting.new
		expect(formatter.word_array.length).to eq(5)
	end

end