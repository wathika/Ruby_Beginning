  class Human

  attr_accessor :name, :status, :complexion, :height, :social
  attr_reader :year
  # attr_writer :name

  def initialize(name, status, complexion)
    @name = name
    @status = status
    @complexion = complexion
  end

  # Cases when you customize the setter
  # Information filtering or editing

  def year=(year)
    if year < 100
      @year = year + 2000
    end
  end

  # # Getter
  # def name
  #   @name
  # end
  #
  # def name=(name)
  #   @name = name
  # end

  def guilt_trip
    "You came alone, you will leave alone.10000 hours make you a pro.
    How many have you put in so far?"
  end

  def stalking
    "Edit your readme and explain the libraries you used"
  end

  def introduction
    "My name is #{@name}, I am #{@complexion} guy who is #{@status} and searching"
  end
end

# When you plan to declare the new method with parameters,
# you need to declare the method initialize at the time of the class creation.
frank = Human.new("Frank Tamre", "Lonely", "Dark skinned")
frank.height = "Short"

puts "=========== About me ============="
puts frank.introduction
puts "\n"
puts "\n"

puts "=========== This is me guilt tripping students ============="

puts frank.guilt_trip
puts "\n"
puts "\n"

puts "=========== This is what I tell students about their Github profiles ============="
puts frank.stalking
