def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str,rep=2)
	repeated_string = str
	while rep > 1
		repeated_string += (' '+str)
		rep -= 1
	end
	repeated_string
end

def start_of_word(str,num)
	str[0..num-1]
end

def first_word(str)
	str.split[0]
end

def titleize(str)
	cap_array = []
	str.split.each_with_index do |word, index|
		unless word.length <= 4 and index != 0 and index != str.split.length-1
			word = word.capitalize
		end
		cap_array.push(word)
	end
	cap_array = cap_array.join(' ')
end