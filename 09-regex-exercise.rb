# Write a program that checks if the sequence of characters "lab" exists in the
# following strings. If it does exist, print out the word. 
# - "laboratory" - "experiment" - "Pans Labyrinth" - "elaborate" - "polar bear"

def check_in(word)
  if /lab/i =~ word #'i' means case insensitive
    puts "Laboratory"
  else
    puts "Does not exist"
  end

end

check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")
