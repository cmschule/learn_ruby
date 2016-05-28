def add(num_1, num_2)
	num_1+num_2
end

def subtract(num_1, num_2)
	num_1-num_2
end

def sum(array)
	sum_of_array = 0
	array.each do |num|
		sum_of_array += num
	end
	sum_of_array
end

def multiply(*nums)
	product = 1
	nums.each do |num|
		product *= num
	end
	product
end

def power(num_1, num_2)
	num_1**num_2
end

def factorial(num)
	fact = num
	while num-1 > 0
		num -= 1
		fact *= num
	end
	fact
end