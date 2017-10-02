def merge(a,b)
	c = []
	while (a.any? && b.any?)
		if (a[0] < b[0])
			c.push(a.shift)
		elsif (a[0] > b[0])
			c.push(b.shift)
		else
			c.push(a.shift)
			c.push(b.shift)
		end
	end

	if (a.any?)
		while (a.any?)
			c.push(a.shift)
		end
	else
		while (b.any?)
			c.push(b.shift)
		end
	end

	return c
end


def mergessort(n)
	if (n.length == 1)
		return n
	else

		left = n[0...n.length/2]
		right = n[n.length/2..n.length]
		left = mergessort(left)
		right =mergessort(right)
		return merge(left,right)
	end
end

print mergessort([1,58,1,6,25,-4,5,1,784,-4]).join(',')

