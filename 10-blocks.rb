# Blocks, like parameters, can be passed into a method just like normal variables.
#  This isn't incredibly hard, and it's very powerful.

#the &(ampersand) in the method definition tells us that the argument is a block
#The block must always be the last parameter in the method definition.
def take_block(&block)
  block.call
end

take_block do
  puts "Block being called in the method!"
end

#more complexly

def take_block(number, &block)
  block.call
end

[1, 2, 3, 4, 5].each do |number|
  take_block number do
    puts "Block being called in the method! #{number}"
  end
end
# Here we are passing the current number of the iteration of the array into the
# take_block method and using it in our block.call.
# You can see the amount of flexibity and the myriad of possibilities that come
# into play when using blocks.
