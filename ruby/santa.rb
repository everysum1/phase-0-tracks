class Santa 

  def initialize(gender, ethnicity)
    p "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", 
                        "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def ethnicity
    @ethnicity
  end 

  def age 
    @age 
  end

  def reindeer_ranking
    @reindeer_ranking
  end

  def speak 
    p "Ho, ho ho.  Haaaappy Holidays!"
  end 

  def eat_milk_and_cookies(cookie_type)
    p "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    reindeer_ranking << (reindeer_ranking.delete(reindeer))    
  end 

end

# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies

santas = []
gender_list = ["male", "female", "MTF", "FTM", "agender", "hermaphrodite", "gender-fluid"]
ethnicity_list = ["African", "Asian", "Latino", "Pacific Islander", "European", "Indian", "Canadian", "Elvish", "Orc" ]

100.times do |x| 
  gender = gender_list[rand(gender_list.length)]
  ethnicity = ethnicity_list[rand(ethnicity_list.length)]
  santas <<  Santa.new(gender, ethnicity)
end 

# p santas

sandy = Santa.new("female", "Orc")
#sandy.name

puts sandy.reindeer_ranking.inspect
sandy.get_mad_at("Dancer")
puts sandy.reindeer_ranking.inspect

p sandy.age
sandy.celebrate_birthday
p sandy.age