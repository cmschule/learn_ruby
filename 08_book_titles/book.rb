class Book

	attr_accessor :title

	def title=(book_name)
		title_array =[]
		book_name.split.each_with_index do |word, index|
			unless ['in','the','of','and','an','a'].include?(word) and index != 0
				word = word.capitalize
			end
			title_array.push(word)
		end
		@title = title_array.join(' ')
	end

end