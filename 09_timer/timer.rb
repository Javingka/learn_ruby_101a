class Timer

	def initialize
		@seconds = 0
		@time = Time.new(2014,12,9,0,0,0)
	end
	
	def seconds=(sec)
		@seconds = sec
		@time = @time + @seconds
	end

	def time_string
		@time.strftime("%T")
	end
	def seconds
		@seconds
	end
end

=begin
# 'OFICIAL' solution to the problem:
class Timer
attr_accessor :seconds
def initialize
@seconds = 0
end
def time_string
hours = @seconds/3600
remainder = @seconds%3600
sprintf("%02d:%02d:%02d", hours, remainder/60, remainder%60)
end
end
=end
