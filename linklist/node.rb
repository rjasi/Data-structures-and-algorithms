class Node

	attr_accessor :previous, :next, :data

	def initialize(x)
		@data = x
		@previous = nil
		@next = nil
	end 

end 