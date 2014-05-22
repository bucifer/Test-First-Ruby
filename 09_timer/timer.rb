class Timer
	attr_accessor :seconds

	def seconds(seconds = 0)
		seconds
	end

	def padded(sec)
		if sec < 10
			return "0" + sec.to_s
		else
			return sec.to_s
		end
	end

	def time_string
		hour = @seconds/3600
		leftover = @seconds % 3600
		minute = leftover / 60
		second = leftover % 60
		padded(hour)+":" + padded(minute)+":" + padded(second)
	end

end

