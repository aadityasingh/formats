require_relative 'link_finder.rb'

describe LinkFinder do
	
	it 'gets the html code of the link' do
		link_finder = LinkFinder.new
		expect(link_finder.link_string[0]).to eq('<')
	end

	it 'splits by <a and makes an array' do
		link_finder = LinkFinder.new
		expect(link_finder.link_array.size).to eq(88)
	end

	it 'gives the links in an array' do
		link_finder = LinkFinder.new
		expect(link_finder.links.size).to eq(88)
	end

	it 'makes a string to output' do
		link_finder = LinkFinder.new
		expect(link_finder.make_string.count("\n")).to eq(88)
	end

	it 'writes the string to a file and returns the string' do
		link_finder = LinkFinder.new
		expect(link_finder.output.count("\n")).to eq(88)
	end

end