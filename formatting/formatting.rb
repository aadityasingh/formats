#read in a block of text from a file
#split it into pieces by line breaks -> store in array

class Formatting

	@input_file_name

	def initialize(fn = "input.txt")
		@input_file_name = fn #enable the user to use other input files
	end

	def text_from_file
		reader = File.new(@input_file_name, "r") #makes the reader
		reader.read #reads from the file
	end

	def word_array
		text_from_file.split("\n") #splits block into an array by line
	end

end
