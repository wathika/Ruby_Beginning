# why do some methods accept a block and others don't?
#   It's because methods that accept blocks have a way of transferring control
#   from the calling method to the block and back again.
#   We can build this into the methods we define by using the yield keyword.
def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }

#Yielding With Parameters
def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }  # call it with a block that

# Now call the method with your name!
yield_name("viscount") { |x| puts "name's #{x}"}    # call it with a block that

#blocks can't be saved to variables and don't have all the powers and abilities
#of a real object. For that, we'll need... procs!
#You can think of a proc as a "saved" block:  ...check procs.rb
