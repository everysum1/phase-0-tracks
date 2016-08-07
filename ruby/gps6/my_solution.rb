# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#Imports a program's data,
#with the path specified as relative to the current file
#'require' uses an absolute path (root) and 'require_relative' uses a relative path

require_relative 'state_data'

class VirusPredictor

  #initializes a VirusPredictor object with state, density, and population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #calls methods that predicts deaths and speed of spread for particular state and population (virus predictor object)
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

    #predicts deaths using population density
    def predicted_deaths(population_density, population, state)
      # declare a death factor var and set it equal to 0.05
      death_factor = 0.05
      number_of_deaths = 0
      # create an hash with benchmarks and their death factors(200, 150, 100, 50)
      death_on_pop = { 200 => 0.4, 150 => 0.3, 100 => 0.2, 50 => 0.1 }
      # loop over the hash's SORTED REVERSED keys
      death_on_pop.keys.sort.reverse.each do |pop_density| 
        # if the key(pop density) is greater than state's pop density, NEXT
        next if @population_density < pop_density 
        # multiply it by population arg, call floor on it
        # store this in a variable somewhere 
        death_factor = death_on_pop[pop_density] 
        break
      end
      number_of_deaths = (@population * death_factor).floor
      # print out variable in a string
      print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    end

    # #predicts speed of spread using population density
    def speed_of_spread(population_density, state)
      # declare a speed variable set equal to default value (2.5)
      speed = 2.5
      # create hash with benchmarks 
      speed_factor = { 200 => 0.5, 150 => 1, 100 => 1.5, 50 => 2 }
      # iterate over the hash's keys in descending order
      speed_factor.keys.sort.reverse.each do |pop_density|
        next if @population_density < pop_density
        # when we find the key that is immediately under population density

        # set speed equal to the key's value in the hash
        speed = speed_factor[pop_density]
        break
      end
      #print out statement with speed variable
      puts " and will spread across the state in #{speed} months. \n\n"
    end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

# # loop through each state in data hash
# STATE_DATA.each do |state, info_hash|
#   # initialize an object with key/value pair
#   state_obj = VirusPredictor.new(state, info_hash[:population_density], info_hash[:population])
#   # call virus effects method on that object
#   state_obj.virus_effects
# end
#=======================================================================
# Reflection Section