require_relative 'formatting_html.rb'

describe FormattingHtml do
	
	it 'makes the header of the html file' do
		formatter = FormattingHtml.new
		expect(formatter.header.length).to eq(14)
	end

	it 'adds the body text to the header' do
		formatter = FormattingHtml.new
		expect(formatter.body_text.length).to eq(72)
	end

	it 'adds the closing text' do
		formatter = FormattingHtml.new
		expect(formatter.close.length).to eq(87)
	end

	it 'writes to a file' do
		formatter = FormattingHtml.new
		expect(formatter.output).to eq(87)
	end

end