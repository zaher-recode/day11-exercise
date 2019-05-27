# In Class Exercise: Linear Search
# Write a method, linear_search(array, target), that accepts an array and another input as target
# The method should use the binary search algorithm to return the position of the element where the target is found
# You may not use any Array or Enum methods except length or size
# You may not use any Enum derived iterations, only for, while or until

def linear_search(target, array)
	#Your code here
	# array.each_with_index { |el,index| return index if el == target}
	i = 0
	while i< array.length	
		return i if array[i] == target
		i+=1
	end
	return nil
end

random_numbers = [6,29,18,2,72,19,18,10,37]
p linear_search(18, random_numbers)
p linear_search(9, random_numbers)

