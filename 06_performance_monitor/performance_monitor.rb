require 'time'

def measure(repeat=1)
	start = Time.now
	repeat.times do |x|
		yield x
	end
	finish = Time.now
	return (finish - start)/repeat
end


