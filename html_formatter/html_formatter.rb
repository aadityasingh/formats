class HtmlFormatter

	@input_file_name
	@output_file_name

	def initialize(fnIn = "input.txt", fnOut = "output.html.erb")
		@input_file_name = fnIn
		@output_file_name = fnOut
	end

	def read_file #reads the text in the file as one block
		readFrom = File.new(@input_file_name, "r")
		readFrom.read()
	end

	def split_words_in_array #splits the block into strings by line
		read_file.split("\n")
	end

	def file_writer #creates the file to write to
		fw = File.new(@output_file_name, "w")
	end

	def write_header #makes the header for the file
		s = "<html>\n<body>\n"
	end

	def write_lines_of_words #adds the lines of words with p tags
		s = write_header
		split_words_in_array.each do |word|
			s = s + "<p>" + word + "</p>\n"
		end
		return s
	end

	def write_end #adds closing tags
		s = write_lines_of_words + "</body>\n</html>"
	end

	def output #it writes the code to the file
		file_writer.write(write_end)
	end

end