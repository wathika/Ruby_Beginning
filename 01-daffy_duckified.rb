print "Hi, Your name please?"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
else
    print "No 's' in your name"
end
puts "Adios, #{user_input}"

=begin
	

Add an additional if statement to re-prompt the user for input if they don't enter anything
Think about how you might account for words in which the letter "c" sounds like an "s"
Think about how you might preserve the user's original capitalization

=end