# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
# and print out each value.
nums = [1,2,3,4,5,6,7,8,9,10]

  nums.each { |x| puts x if x > 5}
  new_arry = nums.select{ |y| y % 2 != 0}
#  Append "11" to the end of the original array. Prepend "0" to the beginning.
  nums.push(11).unshift(0)
  #Get rid of "11". And append a "3".
  nums.pop.push(3)

  #sorting through arrays
  #there are two sorting methods, .sort or sort!. The first method, .sort,
  #simply returns a sorted array while leaving the original array alone.
  #The second method, .sort!, modifies the actual array.
def alphabetize(arr, rev=false)
    arr.sort!
end

numbers = [1,2,3,4,5,6]
puts alphabetize(numbers)
