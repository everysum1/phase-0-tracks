class Puppy
  
  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(times)
    i = 0
    while i < times.to_i
      puts "Woof!"
      i += 1
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    dog_years = human_years.to_i*7
    dog_years
  end


  def wag
    puts "*wags tail*"
  end

end

fido = Puppy.new
fido.fetch("ballie")
fido.roll_over
fido.speak(2)
puts "I am #{fido.dog_years(2)} dog years old!"
fido.speak(1)

class Politician

  def initialize
    puts "Initializing new Politician.  God help us all..."
  end

  def nixon
    puts "I am not a crook!"
  end

  def kiss_baby
    puts "*MUAH*" 
  end

  def campaign(number)
    number.times { puts "Vote for me!" }
  end

  def debate(opponent)
    puts "No, i'm sorry #{opponent}, that's not how it works in this country."
    puts "The American people deserve better! (*applause*)"
  end
end

dump = Politician.new
dump.nixon
dump.kiss_baby
dump.campaign(3)
dump.debate("Mother Theresa")

washington = []
puts (50.times { washington << Politician.new })

washington.each { |crook| crook.nixon; crook.campaign(1) }