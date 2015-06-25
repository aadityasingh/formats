require_relative 'output_formatter'

describe OutputFormatter do

	#start general tests--------------------------------------------------
	it 'reads the file and returns the text of the file' do
		output_formatter = OutputFormatter.new
		expect(output_formatter.read_file.length).to eq(22)
	end

	it 'splits the text into an array of strings' do
		output_formatter = OutputFormatter.new
		expect(output_formatter.split_words_in_array.length).to eq(5)
	end

	it 'makes the file_writer' do
		output_formatter = OutputFormatter.new
		expect(output_formatter.file_writer.size).to eq(0)
	end
	#ends general tests--------------------------------------------------

	#stars specific tests for star grid program--------------------------
	it 'finds the width of the rectangular array' do
		output_formatter = OutputFormatter.new
		expect(output_formatter.width).to eq(9)
	end

	it 'makes the first and last line of stars' do
		output_formatter = OutputFormatter.new
		expect(output_formatter.line_of_stars.length).to eq(10)
	end

	it 'makes all of the lines of words' do
		output_formatter = OutputFormatter.new
		expect(output_formatter.lines_of_words.length).to eq(50)
	end

	it 'makes the final string' do
		output_formatter = OutputFormatter.new
		expect(output_formatter.rectArray.length).to eq(70)
	end
	#ends specific tests for star grid program--------------------------


end