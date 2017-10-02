require_relative 'linklist'

=begin
=end

class KnightPath
	attr_reader :solution

	@@OFF_SET = [[-2,-1],[-1,-2],
				 [ 1,-2],[ 2,-1],
				 [ 2, 1],[ 1, 2],
				 [-1, 2],[-2, 1]]

	def initialize 
		@board = Array.new(8){Array.new(8,0)}
	
		#pathList = LinkedList.new
		#@board.each {|x| print "#{x}\n"}
	end


	def traverse(start_node, end_node)
		pathList = LinkedList.new
		pathList.add(start_node)
		queue = Queue.new
		queue.push (pathList)
		while (true)	
			path = queue.pop

			if (path.tail.loc.x == end_node.loc.x &&  path.tail.loc.y == end_node.loc.y) 
				@solution  = path
				return true
			end


			@@OFF_SET.each do |offset|
				cur_pos = path.tail.loc
				next_pos = Point2D.new(cur_pos.x,cur_pos.y) 
				next_pos.x += offset[0]
				next_pos.y += offset[1]


				#if the next position is the correct end point
				if (next_pos.x == end_node.loc.x &&  next_pos.y == end_node.loc.y) 
					path.add(Node.new(next_pos))
					@solution = LinkedList.copy(path)
					return true

				#out of bounds 
				elsif (next_pos.x>7 || next_pos.y>7 || next_pos.x<0 || next_pos.y<0)
					next
				elsif (path.exists(next_pos) == false)

					new_path = LinkedList.copy(path)
					new_path.add(Node.new(next_pos))
					queue.push(new_path)

				end

			end	

		end

	end

	def find_path(start_point,end_point)
		start = Node.new( Point2D.new(start_point[0],start_point[1]))
		endpoint = Node.new( Point2D.new(end_point[0],end_point[1]))
		traverse(start,endpoint)
	end

	def visual
		current = @solution.head		
		knight = "\u265E"
		while (current != nil)
			#puts "##{current.loc.x } #{current.loc.y} "

			puts
			for i in 0..7
				24.times{print "-"}
				puts
				for j in 0..7
					
					#puts "#{current.loc.y + 7} #{i} "
					if ( j == current.loc.x  && (7 - i) == current.loc.y  )
						print "|#{knight.encode('utf-8')}|"
					else
						print "| |"
					end
				end
				puts
			end
			current = current.next
			24.times{print "-"}
			3.times{puts}
		end


	end 


end