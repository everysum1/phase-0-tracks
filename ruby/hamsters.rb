puts "What is their name?"
name = gets.chomp
puts "How loud would you say they are?"
volume = gets.chomp.to_i
puts "What is their fur color?"
fur = gets.chomp
puts "Are they a good candidate for adoption?"
adoption = gets.chomp
puts "What is their estimated age?"
age = gets.chomp.to_i 
if age == "" 
    age = nil
end



