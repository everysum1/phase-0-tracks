# # In phase-0-tracks/ruby/hashes.rb, pseudocode and write a program that will 
# allow an interior designer to enter the details of a given client: the client's
#  name, age, number of children, decor theme, and so on (you can choose your own 
#  as long as it's a good mix of string, integer, and boolean data).

# # Your keys should be symbols unless you find that you need a string for some 
# reason -- usually only when spaces or other "user friendly" formatting are needed 
# (as in the case of using someone's full name as a hash key). Basically, symbols 
#   are simpler for programmers to use, and readable enough by technical folks to 
#   be used in place of strings most of the time.

# # Your program should ...

# Prompt the designer/user for all of this information.
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the designer has answered all of 
# the questions.
# Give the user the opportunity to update a key (no need to loop, once is fine).
# After all, sometimes users make mistakes! If the designer says "none", skip it.
# But if the designer enters "decor_theme" (for example), your program should 
# ask for a new value and update the :decor_theme key. (Hint: Strings have 
# methods that will turn them into symbols, which would be quite handy here.) 
# You can assume the user will correctly input a key that exists in your hash --
# no need to handle user errors.
# # Print the latest version of the hash, and exit the program.
# # Be sure to pseudocode, and leave your pseudocode in as comments.

answers = []
labels = [:name,     :address, :phone, 
          :email,    :age,     :married, 
          :children, :decor,   :sq, 
          :season,   :colors]

answer_hash = Hash.new
# Ask client's name
puts "What is the client's name?"
# push it into array
answers.push(gets.chomp)
# Ask client's address
puts "What is the client's address?"
# push it into array
answers << gets.chomp
# Ask client's phone number
puts "What is the client's phone number?"
# push it into array
answers.push(gets.chomp.to_i)
# Ask client's email
puts "What is the client's email?"
# push it into array 
answers << gets.chomp
# Ask client's age
puts "How old is the client?"
# push it into array
answers.push(gets.chomp.to_i)
# ask if they are married
puts "Is the client married or living with a partner?"
# push it into array
answers << (gets.chomp.downcase == 'yes' || gets.chomp.downcase.include?("y"))
# ask client's # of children
puts "How many children does the client have?"
# push it into array
answers.push(gets.chomp.to_i)
# ask client's decor theme
puts "What is the client's preferred decor theme?"
# push it into array
answers << gets.chomp
# ask client's square footage
puts "How many square feet is the client's house?"
# push it into array
answers.push(gets.chomp.to_i)
# ask client's favorite season
puts "What is the client's favorite season?"
# # push it into array
answers << gets.chomp
# ask client's favorite colors (separated by a space) 
puts "What are the client's favorite colors? Press enter after each color. Type 'done' when finished."
# create an array and push all the answers into that array.
color = gets.chomp
colorArr = []
while color.downcase != "done"
  colorArr << color
  color = gets.chomp
end 
# push that array into answers array
answers.push(colorArr)
# run through list of labels and client's answers simultaneously
i = 0
while i < labels.length
  # create a hash and assign every label as a key, and corresponding answer's index to the value
  answer_hash[labels[i]] = answers[i]
  i += 1
end
# print out the hash
puts "Your client profile right now is: #{answer_hash.inspect}"
# ask if they want to change any key
puts "Would you like to change the value of any key? Enter name of key. Type 'none' if finished."
response = gets.chomp
  # if input isn't 'none'
  if response.downcase != "none"
    # ask what they want to replace it with
    puts "What would you like to make #{response.downcase}?"
    new_value = gets.chomp
    # look up key's value and reassign 
    answer_hash[response.to_sym] = new_value
  end
# print out hash again
puts "Your finished client profile is: #{answer_hash.inspect}"