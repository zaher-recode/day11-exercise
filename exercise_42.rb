# Exercise 42
# Write a method, compress_string(string), that accepts a string as input
# The method should return a new string where streaks of consecutive characters are compressed to a number followed by the character.
# For example "aaabbc" is compressed to "3a2bc".



# convert string to array

# hash { letter: count} default = 1

# while loop  i<len -1
#     if [i] == [i+1]
#     count= hash[letter] +=1 
#     i += 1
# end
# return hash.to_a (flatten) lets return hash for now.
# end

# Write Your method code here
def compress_string(string)
    i = 0
    result =""
    count = 1
    while i<string.length
        if i < string.length - 1
            if string[i] == string[i + 1]
                count += 1
            else
                result += "#{count if count>1}#{string[i]}"
                count = 1
            end
        elsif i == string.length - 1
                result += "#{count if count>1}#{string[i]}"
        end
        i += 1
    end
    return result
end

# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, string, expected)
    actual = compress_string(string)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1,"aaabbc", "3a2bc")
    check_solution(2, "xxyyyyzz", "2x4y2z")
    check_solution(3, "qqqqq", "5q")
    check_solution(4, "mississippi", "mi2si2si2pi")
end

# Execute the tests.
run_tests()