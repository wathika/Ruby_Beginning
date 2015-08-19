# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
# and print out each value.
def nums(arry)
  arry.each { |x| puts x if x > 5}
end
nums([1,2,3,4,5,6,7,8,9,10])
