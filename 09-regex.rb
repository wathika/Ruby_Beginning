def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")

# A regular expression is a sequence of characters that form pattern matching
#rules, and is then applied to a string to look for matches. Regular expressions
# have many uses,  example:
#
# Check if the pattern "ss" appears in the string "Mississippi".
def has_a_b?(string)
  if /b/.match(string)
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")
# On top of the =~ operator, we can use the match method to perform regex
# comparisons as well. This method returns a MatchData object that describes the
# match or nil if there is no match.
