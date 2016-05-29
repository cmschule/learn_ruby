def translate_word(str)
	unless ['a','e','i','o','u'].include?(str[0])
		if str[0..1] == 'qu'
			str = str[2..-1]+'qu'
		else
			str = str[1..-1]+str[0]
		end
		return translate_word(str)
	end
	str+'ay'
end

def translate(str)
	translated_array = []
	str.split.each do |word|
		translated_array.push(translate_word(word))
	end
	translated_array.join(' ')
end