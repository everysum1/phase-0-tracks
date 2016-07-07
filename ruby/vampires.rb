puts "How many employees will be processed?"
employees = gets.chomp.to_i

employees.times do 
  puts "What is your name?"
  name = gets.chomp
  puts "How old are you?"
  age = gets.chomp.to_i
  puts "What year were you born?"
  birth_year = gets.chomp.to_i
  actual_age = 2016 - birth_year
  puts "Our company cafeteria serves garlic bread.  Should we order some for you?"
  garlic = gets.chomp.downcase
  likes_garlic = (garlic == "yes" || garlic == "y") 
  puts "Would you like to enroll in the company's health insurance?"
  insurance = gets.chomp.downcase
  wants_insurance = (insurance == "yes" || insurance = "y")
  
  allergy = ""
  while allergy != "done" 
    puts "Do you have any allergies?  Please name them one at a time. Type 'done' when finished."
    allergy = gets.chomp
    if allergy == "sunshine" 
      puts "Probably a vampire"
      return
    end
  end


  if name == "Drake Cula" || name == "Tu Fang"
    puts
    puts "Definitely a vampire"
  elsif age == actual_age && ( likes_garlic || wants_insurance )
    puts
    puts "Probably not a vampire"
  elsif age < actual_age && ( !likes_garlic || !wants_insurance )
    puts
    puts "Probably a vampire"
  elsif age < actual_age && !likes_garlic && !wants_insurance
    puts
    puts "Almost certainly a vampire"
  else
    puts
    puts "Results inconclusive"
    puts
  end
end
  
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."