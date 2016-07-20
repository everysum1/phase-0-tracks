

def method_name
    nums = [1,2,3,4,5]
    letters = ["a", "b", "c", "d", "e"]
    big_arr = [nums, letters]
    yield ( big_arr.each )
end

method_name { |arr| arr.each { |x| puts x } }

def greetings
  runloop = true
  i = 0
  ary=[]
  while runloop
    puts "Who would you like to greet? If you are done type stop."
    ary[i] = gets.chop
    if ary[i] == "stop"
      ary.pop
      runloop = false;
    end
    i += 1
  end

  yield (ary)

end

greetings {|arr| arr.each { |x| puts "Welcome #{x}!"} }

myArray = ["Embarcadero", "Civic Center", "Mission 16th st", "Mission 24th st", "Bay View"]
myHash = { "Pierce Brosnan" => 2001, "Sean Connery" => 1975, "George Lazenby" => 1961, "Roger Moore" => 1963 }

myArray.each { |stop| puts "Coming up, #{stop} Station!!" }
myHash.each { |actor, year| puts "#{actor} started playing Bond in #{year}" }

myArray.map! { |bart_stop| bart_stop.upcase }
myHash = myHash.map { |actor, year| [actor.downcase, year]}

puts myArray.inspect
puts myHash.inspect

sampleArr = [1, 2, 3, 4, 5, 1, 2, 0]
sampleHash = { "A" => "aardvark", "B"=> "bear", "C"=> "cheetah", "D"=> "deer" }

sampleArr.delete_if { |x| x < 3 }
puts sampleArr.inspect

sampleHash.delete_if { |letter, animal| animal[0] < "c" }
puts sampleHash.inspect

sampleArr = [1, 2, 3, 4, 5, 1, 2, 0]
sampleHash = { "A" => "aardvark", "B"=> "bear", "C"=> "cheetah", "D"=> "deer" }

puts "Before Array#select: #{sampleArr}"
puts "select method returns: #{sampleArr.select { |num| num % 2 == 0 } }"
puts "After Array#select: #{sampleArr}"

puts "Before Hash#select: #{sampleHash}"
puts "select method returns #{sampleHash.select { |letter, animal| animal.include?("e") } }"
puts "After Hash#select: #{sampleHash}"

puts "Before Array#keep_if: #{sampleArr}"
puts "keep if returns: #{sampleArr.keep_if { |x| x >= 3 } }"
puts "After Array#keep_if: #{sampleArr}"

puts "Before Hash#keep_if: #{sampleHash}"
puts "keep_if returns: #{sampleHash.keep_if { |letter, animal| animal.include?("ea") } }"
puts "After Hash#keep_if: #{sampleHash}"

sampleArr = [1, 2, 3, 4, 5, 1, 2, 0]
sampleHash = { "A" => "aardvark", "B"=> "bear", "C"=> "cheetah", "D"=> "deer" }

puts "Before Array#take_while: #{sampleArr}"
puts "take_while returns: #{sampleArr.take_while { |x| x <= 2} }"
puts "After Array#take_while: #{sampleArr}"

puts "Before Hash#reject: #{sampleHash}"
puts "reject returns: #{sampleHash.reject { |letter, animal| animal.include?("aa") } }"
puts "After Hash#reject: #{sampleHash}"