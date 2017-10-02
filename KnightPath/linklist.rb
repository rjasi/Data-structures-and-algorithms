require_relative "node"


=begin

 
=end
	


class LinkedList 
	attr_accessor :head, :tail

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
			return false
		end 

		print "[#{node}]"
		if (node.next == nil)
			return false
		else
			print " <=> "
			to_s(node.next)
		end

	end 


	def exists(node)
		head = @head

		while (true)
			if head == nil
				return false
			elsif (@head.loc.is_same_as(node))
				return true 
			end 

			head = head.next
			 	
		end 

	end

	def self.copy(list)
		link = LinkedList.new
		node = list.head
		while (node != nil)
			link.add(Node.new(Point2D.new(node.loc.x,node.loc.y) ))
			node =node.next

		end

		return link

	end 


end