require_relative 'html_formatter'

describe HtmlFormatter do

	it 'reads the file and returns the text of the file' do
		html_formatter = HtmlFormatter.new
		expect(html_formatter.read_file.length).to eq(22)
	end

	it 'splits the text into an array of strings' do
		html_formatter = HtmlFormatter.new
		expect(html_formatter.split_words_in_array.length).to eq(5)
	end

	it 'makes the file_writer' do
		html_formatter = HtmlFormatter.new
		expect(html_formatter.file_writer.size).to eq(0)
	end

	it 'makes the file\'s header' do
		html_formatter = HtmlFormatter.new
		expect(html_formatter.write_header.length).to eq(14)
	end

	it 'adds the lines of words with p tags' do
		html_formatter = HtmlFormatter.new
		expect(html_formatter.write_lines_of_words.length).to eq(72)
	end

	it 'adds the closing tags' do
		html_formatter = HtmlFormatter.new
		expect(html_formatter.write_end.length).to eq(87)
	end

	it 'writes the code to the file' do
		html_formatter = HtmlFormatter.new
		expect(html_formatter.output).to eq(87)
	end


end