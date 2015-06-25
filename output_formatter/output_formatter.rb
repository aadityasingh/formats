class OutputFormatter

	
	@input_file_name
	@output_file_name

	def initialize(fn = "input.txt", fnOut = "output.html") 
	#enables users to pass different files
		@input_file_name = fn 
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

	#start specific code for star grid program------------------------------
	def width #determines the width of the rectangle
		w = split_words_in_array.sort_by {|x| x.length}.last.length + 4
	end
	
	def line_of_stars #makes a line of stars with width
		s = ""
		width.times do
			s = s + "*"
		end
		s += "\n"
	end

	def lines_of_words #makes all of the lines of words
		s = ""
		split_words_in_array.each do |word|
			s = s + "* "
			s = s + word
			(width-3-word.length).times do
				s = s + " "
			end
			s = s + "*\n"
		end
		return s #returns to avoid errors
	end


	def rectArray #combines the three pieces to make the final output
		line_of_stars + lines_of_words + line_of_stars
	end
	#end specific code for star grid program----------------------------------
	
	

end
