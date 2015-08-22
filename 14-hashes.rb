new_hash = {}
 #created a new empty hash

 #iterating over hashes
 my_hash.each do |key, value|
  puts key, my_hash[key]
end

#if no key matches the requested one, Ruby returns nil../different from flase/

#if you dont want to settle for nil./
no_nil_hash = Hash.new(""default val)
