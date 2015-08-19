# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
# and print out each value.
nums = [1,2,3,4,5,6,7,8,9,10]

  nums.each { |x| puts x if x > 5}
  new_arry = nums.select{ |y| y % 2 != 0}
