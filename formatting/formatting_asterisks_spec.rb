require_relative 'formatting_asterisks.rb'

describe FormattingAsterisks do
	
	it 'finds the width needed for the rectangle' do
		formatter = FormattingAsterisks.new
		expect(formatter.width).to eq(9)
	end

	it 'makes a line of stars with size of width' do
		formatter = FormattingAsterisks.new
		expect(formatter.line_of_stars.length).to eq(formatter.width+1)
		#need to add 1 for the break line
	end

	it 'makes the lines of words with padding' do
		formatter = FormattingAsterisks.new
		expect(formatter.lines_of_words.length).to eq(60)
	end

	it 'makes the final rectangle' do
		formatter = FormattingAsterisks.new
		expect(formatter.rect_array.length).to eq(70)
	end

	it 'writes to a file' do
		formatter = FormattingAsterisks.new
		expect(formatter.output).to eq(70)
	end

end