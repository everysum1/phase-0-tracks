module Flight

  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end 

class Bird
  include Flight
end

class Plane
  include Flight  
end

bird = Bird.new
bird.take_off(8000)

maverick = Plane.new
maverick.take_off('the danger zone')