require_relative "node"

class LinkedList 

	def initialize
		@head = nil 
		@tail = nil
	end

	def add (node)
		if @tail == nil
			@head = node
			@tail = node
		else
			@tail.next = node
			node.previous = @tail
			@tail = node 
		end
	end

	def to_s(node =@head)
		if node == nil 
			return nil
		end 

		print "[#{node.data}]"
		if (node.next == nil)
			return nil
		else
			print " <=> "
			to_s(node.next)
		end


	end 


end