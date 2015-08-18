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
