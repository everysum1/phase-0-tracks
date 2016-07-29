class Santa 
  attr_reader :ethnicity
  attr_accessor :gender, :reindeer_ranking, :age

  def initialize(gender, ethnicity)
    p "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", 
                        "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
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

p sandy.reindeer_ranking.inspect
sandy.get_mad_at("Dancer")
p sandy.reindeer_ranking.inspect

p sandy.age
sandy.celebrate_birthday
p sandy.age

p sandy.gender
sandy.gender = "male"
p sandy.gender

10000.times do |x| 
  gender = gender_list[rand(gender_list.length)]
  ethnicity = ethnicity_list[rand(ethnicity_list.length)]
  santa = Santa.new(gender, ethnicity)
  santa.age = rand(140)
  p "Gender: #{santa.gender}"
  p "Ethnicity: #{santa.ethnicity}"
  p "Age: #{santa.age}"
  p "Reindeer ranking: #{santa.reindeer_ranking.shuffle}"
end 