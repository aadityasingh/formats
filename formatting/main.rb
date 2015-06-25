require_relative 'formatting_asterisks.rb'
require_relative 'formatting_html.rb'

class Main

	format_rectangle = FormattingAsterisks.new
	format_into_html = FormattingHtml.new
	format_rectangle.output
	format_into_html.output

end
