def measure(num=1,&subject_block)
	total_time = 0
	num.times do 
		start_time = Time.now
		subject_block.call
		total_time += Time.now - start_time
	end
	total_time = total_time/num
end