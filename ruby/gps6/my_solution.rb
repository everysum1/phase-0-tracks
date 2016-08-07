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
    predicted_deaths
    speed_of_spread
  end

  private

    #predicts deaths using population density
    def predicted_deaths
      # create an hash with benchmarks and their death factors(200, 150, 100, 50)
      death_on_pop = { 200 => 0.4, 150 => 0.3, 100 => 0.2, 50 => 0.1, 0 => 0.05 }
      # loop over the hash's SORTED REVERSED keys
      death_factor = determine_factor(death_on_pop)
      number_of_deaths = (@population * death_factor).floor
      # print out variable in a string
      print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    end

    # #predicts speed of spread using population density
    def speed_of_spread
      # create hash with benchmarks 
      speed_factor = { 200 => 0.5, 150 => 1, 100 => 1.5, 50 => 2, 0 => 2.5 }
      # iterate over the hash's keys in descending order
      speed = determine_factor(speed_factor)
      #print out statement with speed variable
      puts " and will spread across the state in #{speed} months. \n\n"
    end

    def determine_factor(benchmark_hash)
      benchmark_hash.keys.sort.reverse.each do |pop_density|
        next if @population_density < pop_density
        return benchmark_hash[pop_density]
      end
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