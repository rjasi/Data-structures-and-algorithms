require_relative 'BinaryTree'


tree = BinaryTree.build_tree([1, 7, 4, 23, 8, 45, 9])
#tree.print_tree()
x=  tree.bfs(233) #tree.dept_first_searchh(45)

if x != nil
	puts x.data
else
	puts "Value not present"
end

puts tree