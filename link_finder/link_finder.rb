#get the link's html code -> save to a string
#split string into an array by '<a '
#split each term by 'href=' and add the second term to an array
#go through the array and find the substring from 2 to length-2 
#output all the links into a file

require 'httparty'

class LinkFinder

	def link_string
		HTTParty.get("http://tjhsst.edu") #gets the link's raw html code
	end

	def link_array 
		x = link_string.split("<a ") #need this because attributes can be added
		#between <a and href
		x.delete(x[0])
		return x
	end

	def links
		a = []
		link_array.each do |code| 
			a << code.split("href")[1].split("\"")[1].sub("\\", "")
			#the above code does the following:
			#1. Takes each string separated by <a and splits it by href
			#2. Takes the first string and splits it by '"'
			#3. finds the first element in the above array
			#4. Replaces the last \ by a blank string 
			#5. And (finally) adds the string to an array, namely a
		end
		return a
	end

	def make_string
		s = ""
		links.each_with_index do |link, index|
			if (link == nil) #takes care of nils...we don't want errors!
				puts index
			else
			end
			s = s + link + "\n" #adds the link and a new line to the string
		end
		return s #must explicitly return
	end

	def output
		writer = File.new("output.txt", "w") #writes to output.txt
		writer.write(make_string)
		return make_string #return explicitly so that puts can be used
		#the previous line would return the length
	end

end
