# The basic structure of exceptions looks like this

                # begin
                #   # perform some dangerous operation
                # rescue
                #   # do this if operation fails
                #   # for example, log the error
                # end

names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end
# when we go to call .length on nil we get an error. When an exception, or error,
#   is raised, the rescue block will execute and then the program will continue to
#    run as it normally would
# if not our program would stop

#use the rescue reserved word in-line like so:
zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that!"
puts "After each call"
# This code prints the following output:(can't call .each method on an int)
#
# Before each call
# Can't do that!
# After each call

#we can also rescue pre-existing errors(errors before they happen)
def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)
# Here we are rescuing the ZeroDivisionError and saving it into a variable e.
# We then have access to the message method that the ZeroDivisionError object has
# available
