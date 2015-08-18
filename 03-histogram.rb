puts "tell us your story"
text = gets.chomp

words = text.split(" ")

frequencies = Hash.new(0)

words.each { |x|
    frequencies[x] += 1
    }
frequencies = frequencies.sort_by { |x, y|
    y
    }
frequencies.reverse!

frequencies.each { |x, y|
    puts "#{x} #{y}"
    }