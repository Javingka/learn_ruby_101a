#pig_latin
def translate word
	vowalsArray = ['a','e','i','o','u']
	final = []
  aw =	word.split(" ")
	aw.each do |word|
		lt =''
		ind = 0
		word.each_char.with_index do | ch, index |
			if vowalsArray.include?  word.byteslice(index) 
			  #lt=''
				ind = index-1 
				if word.byteslice(index) != 'u'
					break
				end	
			end
		end

		lt = lt + word [0..ind]
		word [0..ind] = ''

		word.insert(-1,lt+'ay')	
		
		final <<  word #final + word.to_s
	end
  f =	final.join(" ")
	return f
end

=begin #THIS IS THE 'OFICIAL' SOLUTIONS Using Regular Expressions regex
def translate phrase
phrase.split.map do |word|
# we are using "/x" to document this big fat regex
word =~ /^ # beginning of string   #The =~ operator matches the regular expression against a string, and it returns either the offset of the match from the string if it is found, otherwise nil. 
(
[^aeiouyq]* # any number of consonants in a row
(qu)? # or maybe a 'qu'
)
(.*) # the rest of the string
$/x # end of string
# $1, $2, etc. get filled with the parenthesized chunks
# from the most recent regular expression match
first_phoneme = $1
rest_of_word = $3
"#{rest_of_word}#{first_phoneme}ay"
end.join(" ")
end
=end
