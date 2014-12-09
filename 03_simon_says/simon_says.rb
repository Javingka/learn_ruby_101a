# simon_says.rb
def echo new_s
	new_s
end

def shout new_s
	new_s.upcase
end

#def repeat new_s
#	new_s + " " + new_s
#end

def repeat (new_s, t = 2)
	r = new_s
  t = t-1	
	t.times	{ r = r + " " + new_s }
	return r 
end

def start_of_word (new_s, index)
	new_s[0, index]
end

def first_word new_s
	new_s.split(" ")[0]
end

def titleize new_s
	ns = new_s.split(" ")
	ns.length.times do |i| 
		if ["and", "the", "over"].include? ns[i] 
			ns[i] = ns[i]
		else
			ns[i] = ns[i].capitalize 
		end
	end
	ns[0] = ns.first.capitalize
	r = ns.join(' ')
	return r
end
