#find width of rect array
#make a line of stars
#format words in to a rectangular array
#make a final line of stars
#Write results into a file of the user's choosing

require_relative 'formatting.rb'

class FormattingAsterisks < Formatting

	def width
		word_array.sort {|x| x.length}.last.length + 4 #sorts and finds the
		#longest string. Adds 4 for the '* ' and ' *' at the ends
	end

	def line_of_stars
		s = ""
		width.times do
			s = s + "*"
		end
		s = s + "\n"
	end

	def lines_of_words
		s = line_of_stars
		word_array.each do |word|
			s = s + "* " + word.ljust(width-4) + " *\n" #ljust pads the string
		end
		return s #need to explicitly return
	end

	def rect_array
		s = lines_of_words + line_of_stars
	end

	def output(out_name = "output.txt")
		writer = File.new(out_name, "w")
		writer.write(rect_array)
	end

end