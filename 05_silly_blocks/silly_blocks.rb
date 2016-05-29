def reverser(&block)
	reversed_string = []
	new_string = block.call

	new_string.split.each do |word|
		reversed_string.push(word.reverse!)
	end
	reversed_string.join(' ')
end

def adder(num=1, &block)
	block_num = block.call
	num+block_num
end

def repeater(repetitions=2,&block)
	while repetitions > 0
		block.call
		repetitions -= 1
	end
end