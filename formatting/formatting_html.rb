#make a header
#write the body text
#close the header
#Write results into a file of the user's choosing

require_relative 'formatting.rb'

class FormattingHtml < Formatting

	def header
		"<html>\n<body>\n" #the header text
	end

	def body_text
		s = header
		word_array.each do |word|
			s = s + "<p>" + word + "</p>\n"
		end
		return s #need to explicitly return
	end

	def close
		body_text + "</body>\n</html>"
	end

	def output(out_name = "output.html")
		writer = File.new(out_name, "w")
		writer.write(close)
	end

end