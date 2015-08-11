puts ("Hello world")
=begin
	
rescue Exception => e
	

#user input
puts("Type in your name!")
name = gets()
puts(name)
puts(name)


puts("Type in your name!")
name = gets.chomp
puts("Hello " + name + "!")

=end

=begin
	
rescue Exception => e
	

puts("Type in a number")
num = gets.to_i

if num < 10
	puts "That is not a huge number"
elsif num < 100
	puts "wow! thats big"
elsif num < 1000
	puts "DAAAAAAAMN"
else num < 1000
	puts "huge"

end

puts "Thank you"

=end
=begin
	
rescue Exception => e
	


puts("Input a number!")
num = gets.to_i

while num < 100
  puts("That number is too small! Try again!")
  # prompt again, re-assign `num`
  num = gets.to_i
end

puts("You typed " + num.to_s + " which is at least 100!")
=end

# You can write an array across many lines like this.
presidents = [
  "George Washington",
  "John Adams",
  "Thomas Jefferson",
  "James Madison",
  "James Monroe",
  "John Quincy Adams"
]

# Prints 6, the number of items in the array
puts(presidents.length)

# Print each one of the presidents in the array.
idx = 0
while idx < presidents.length
  puts(presidents[idx])
  idx = idx + 1
end