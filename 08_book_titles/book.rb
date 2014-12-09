class Book
	#A setter method	
	def title=(new_title)
  	articles = ["the", "an", "a", "and", "in", "of"] #conjunction too 
    nt = []	
		new_title.split.map do |word|
			if articles.include? word
				nt << word	
			else
				nt << word.capitalize
			end
		end
		nt[0] = nt.first.capitalize
		@title = nt.join(' ')
	end	
	
	#A getter method
	def title
		@title
	end
end

=begin
# OFICIAL response

class Book
attr_reader :title
def title=(new_title)
words = new_title.split(" ")
words = [words[0].capitalize] +
words[1..-1].map do |word|
little_words = %w{a an and the in of}
if little_words.include? word
word
else
word.capitalize
end
end
@title = words.join(" ")
end
end
=end

