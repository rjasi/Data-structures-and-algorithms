require_relative 'Point2D'


class Node

	attr_accessor :previous, :next, :loc

	def initialize(locs)
		@loc = locs
		@previous = nil
		@next = nil
	end 

	def to_s
		return "#{@loc}"
	end
end 