input =[2,8,5,3,6,2,-6]

def bubble_select(array)
    end_loop = array.length - 1
    swapped = true
    if swapped
        while end_loop>0
            new_arr = array
            start_loop = 0
            while start_loop < array.length - 1
                if array[start_loop] > array[start_loop+1]
                    array[start_loop], array[start_loop + 1] =  array[start_loop + 1], array[start_loop]
                end
                start_loop += 1
            end
            if new_arr==array
                swapped = false 
           end
            end_loop -= 1
        end
    end
    return array

end

p bubble_select(input)