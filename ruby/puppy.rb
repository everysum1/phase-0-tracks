class Puppy 

  def initialize(name)
    @name = name
    puts "New puppy instance ready!"
  end

  def bark(times)
    times.times { puts "Woof!" }
  end
end

duchess = Puppy.new("duchess")
spot = Puppy.new('spot')
fido = Puppy.new('fido')

fido.bark(2)