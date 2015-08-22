new_hash = {}
 #created a new empty hash

 #iterating over hashes
 my_hash.each do |key, value|
  puts key, my_hash[key]
end

#if no key matches the requested one, Ruby returns nil../different from flase/

#if you dont want to settle for nil./
no_nil_hash = Hash.new(""default val)

my_first_symbol = :viscount        #creating a symbol

#symbols are primarily used either as hash keys or for referencing method names.

#Converting between strings and symbols is a snap.
:sasquatch.to_s
# ==> "sasquatch"

"sasquatch".to_sym
# ==> :sasquatch

#converting an array of strings into symbols
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
# Add your code below!
symbols = []
strings.each do |s|
    symbols.push(s.to_sym) # of .intern can be used
end


movies = {
    :one => "1",
    :two => "2",
    :three => "3",
    }
#from old version of rocket to new in Ruby 1.9
    movies = {
        one: "1",
        two: "2",
        three: "3"
        }
