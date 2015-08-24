# Procs are blocks that are wrapped in a proc object  and stored in a variable to
#  be passed around. This is how you define a proc.
talk = Proc.new do
  puts "I am talking."
end

talk.call

#Procs can also take arguments if specified.

talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call "Bob"

#passing_proc
def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)


#blocks can't be saved to variables and don't have all the powers and abilities
#of a real object. For that, we'll need... procs!
#You can think of a proc as a "saved" block


cube = Proc.new { |x| x ** 3 }   #creating a proc called cube

[1, 2, 3].collect!(&cube)    #we can then pass the proc to a method
# ==> [1, 8, 27]
[4, 5, 6].map!(&cube)       #The & is used to convert the cube proc into a block
# ==> [64, 125, 216]        #(since .collect! and .map! normally take a block).

#Unlike blocks, we can call procs directly by using Ruby's .call method.
test = Proc.new { # does something }
test.call
# does that something!
hi = Proc.new { puts "Hello!"}
hi.call

 #you can also convert symbols to procs
 strings = ["1", "2", "3"]
 nums = strings.map(&:to_i)
 # ==> [1, 2, 3]
