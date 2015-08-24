#Like procs, lambdas are objects
def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })


strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!
symbolize = lambda { |x| x.to_sym }

symbols = strings.collect(&symbolize)


#differencess
# First, a lambda checks the number of arguments passed to it, while a proc does not.
# This means that a lambda will throw an error if you pass it the wrong number
# of arguments, whereas a proc will ignore unexpected arguments and assign nil to
# any that are missing.

# Second, when a lambda returns, it passes control back to the calling method;
# when a proc returns, it does so immediately, without going back to the calling method.

def batman_ironman_proc       #calls a proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda     #calls a lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda

#lambdas
# Second verse: same as the first! Let's go ahead and make ourselves a lambda.
# Create a lambda called first_half that checks if a hash value is less than (that is, earlier in the alphabet than) "M". (No need to do anything with the crew hash yet.) Make sure to use a capital "M," since we'll be checking capitalized names!
# Because it will be checking a hash, your lambda should include |key, value| instead of just |value|.

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = lambda { |rank, name| name < "M" }

# #lambda to method
# Home stretch! Now let's pass our lambda to a method, as well.
# To finish up, let's go ahead and create a variable called a_to_m and set it equal to calling .select on crew, and pass in your first_half lambda to filter for the names that are before "M" in the alphabet. Remember to pass &first_half to convert your lambda to a block!

a_to_m = crew.select(&first_half)
# ==> {:lt_cdr=>"Data", :chief_engineer=>"LaForge", :doctor=>"Crusher"}
