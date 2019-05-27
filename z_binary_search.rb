# In Class Exercise: Binary Search
# Write a method, binary search(array, target), that accepts an array and another input as target
# The method should use the binary search algorithm to return the position of the element where the target is found

def binary_search( target ,array)
	#Your code here

	# solved using array.slice 
# 	first_index =0
# 	length= array.length
# 	mid = (length - first_index)/2
# 	array2 = array.dup
# 	while !array.empty?
# 		mid = (array.length - first_index)/2
		
# 		if array[mid] == target
			
# 			return array2.index(array[mid])
			
# 		elsif target < array[mid]
# 			array = array.slice(0,mid)
		
# 		else
# 			array = array.slice(mid,array.length-1)
				
# 		end
# 	end
# 	return -1
# end



# solved as planned
	first_index =0
	last_index = array.length - 1
		while last_index >= first_index
			mid = (last_index + first_index)/2
			
			case array[mid] <=> target
			when 0
				return mid
			when 1
				last_index = mid -1
			when -1
				first_index = mid +1
			end
		end
	return -1
end


test_array = (100..200).to_a
puts (binary_search(135, test_array) == 35)

test_array = [13, 19, 24, 29, 32, 37, 43]
puts binary_search(35, test_array) == -1