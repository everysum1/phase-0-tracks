puts "What is the hamster's name?"
name = gets.chomp
puts "How loud would you say they are between 1-10?"
volume = gets.chomp.to_i
puts "What is their fur color?"
fur = gets.chomp
puts "Are they a good candidate for adoption?"
adoption = gets.chomp
    if adoption.downcase == "yes" || adoption.downcase == "y"
        adoption = true
    else
        adoption = false
    end
puts "What is their estimated age?"
age = gets.chomp.to_i 
if age == "" 
    age = nil
end



