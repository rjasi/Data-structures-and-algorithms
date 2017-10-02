#sentinel nodes used
=begin
	def breath_first_search(left,right,value)
		if @data == value 
			return self
		end 

		if (left.data == @data)
			return left
		elsif (right.data == @data)
			return right
		else
			return breath_first_search(@left.left,@right,value)
		end
	end



	def add (node)
		if (@data == nil)
			@data = node.data
			@left = self.new
			@right = self.new
		else
			if (@data >= node.data)
				if (@left == nil)
					@left = node
				else
					@left.add(node)
				end
			else
				if (@right == nil)
					@right = node
				else
					@right.add(node)
				end
			end
		end  
		return self

	end

	def add_array(nodes)
		nodes.each do |node|
			add(BinaryTree.new(node))
		end
	end

	def self.build_tree(nodes)
		x = BinaryTree.new(nodes[0])


		nodes.each do |node|
			next if node == nodes[0]
			 x.add(BinaryTree.new(node))
		end

		return x
	end


	def print_tree()
		queue = Queue.new()
		queue.push(self)
	
		while (!queue.empty?)
			x = queue.pop
			queue.push(x.left) if x.left != nil
			queue.push(x.right) if x.right !=nil
			print "Parent: #{x.data} : Left = #{x.left.data if x.left != nil},Right : #{x.right.data if x.right != nil } "

			
			puts
		end
		
	end



	def dept_first_search(value)
		if (@data == nil)
			return nil
		end


		if (@data == value)
			return self
		else
			if (@data >= value && @left != nil)
				return @left.dept_first_search(value)
			elsif (@data < value && @right != nil)
				return @right.dept_first_search(value)
			else
				return nil
			end
		end
	end



	def bfs(val)
		queue = Queue.new()
		queue.push(self)
	
		while (!queue.empty?)
			x = queue.pop

			queue.push(x.left) if x.left != nil
			queue.push(x.right) if x.right !=nil
			
			if x.data == val
				return x 
			end 	
		
		end
	end

	def to_s
		return "Parent: #{@data} : Left = #{@left.data if @left != nil},Right : #{@right.data if @right != nil } "
	end

=end
class BinaryTree

	attr_accessor :data, :left, :right

	def initialize(x=nil,arr = [], left = nil,right = nil)
		@data = x
		@previous = arr
		@left = left
		@right = right
	end 

	def add(node)
		@previous.push(node)
	end
	



end