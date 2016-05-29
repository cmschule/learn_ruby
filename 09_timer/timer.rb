class Timer

	attr_accessor :seconds, :minutes, :hours, :time_string

	def initialize
		@seconds = 0
		@minutes = 0
		@hours = 0
		@time_string = '00:00:00'
	end

	def time_string
		time_array = conversion(@seconds,@minutes,@hours)
		if time_array[0] < 10
			time_array[0] = '0'+ time_array[0].to_s
		end
		if time_array[1] < 10
			time_array[1] = '0'+time_array[1].to_s
		end
		if time_array[2] < 10
			time_array[2] = '0'+time_array[2].to_s
		end
		@time_string = time_array[2].to_s+':'+time_array[1].to_s+':'+time_array[0].to_s
	end

	private

	def conversion(seconds, minutes, hours)
		if seconds > 60
			minutes += seconds/60
			seconds = seconds - minutes*60
		end
		if minutes > 60
			hours += minutes/60
			minutes = minutes - hours*60
		end
		[seconds,minutes,hours]
	end

end