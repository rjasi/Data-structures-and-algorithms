class Point2D
	attr_accessor :x, :y

	def initialize (x_pos,y_pos)
		@x = x_pos
		@y = y_pos
	end

	def is_same_as (loc)
		if @x == loc.x && @y == loc.y
			return true
		else
			return false
		end 
	end 
	

	def to_s
		return "x = #{@x} y = #{@y}"
	end

end 