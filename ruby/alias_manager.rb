# In phase-0-tracks/ruby/alias_manager.rb, pseudocode and write a method that takes
#  a spy's real name (e.g., "Felicia Torres") and creates a fake name with it by 
#  doing the following:

# Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and 
# all of the consonants (everything else besides the vowels) to the next consonant 
# in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

def alias_manager(name)
  vowels = ["a", "e", "i", "o", "u"]
  # split name into two strings (first and last name)
  names = name.split(' ').reverse
  # reverse the order of the words

  # loop through the letters of each word
  names.map! do |name|
    name.chars.map! do |char|
      # if its a vowel
      if vowels.include?(char)
        #change it to the next vowel (if its a "u", make it wrap around)
        vowels[(vowels.index(char) + 1) % 5]
      # else if its a consonant
      else 
        # if its a z, make it a b
        if char.downcase == "z"
          "b"
        else 
          #change it to the next consonant in the alphabet
          vowels.include?(char.downcase.next) ? char.next.next : char.next
        end 
      end 
    end 
  end 
  # Join the letters and apitalize the first letters of the words
  names.map! do |name|
    name.join.capitalize
  end 
  # return the transformed string
  names.join(" ")
end 

puts (
  "Felicia Torres turns into Vussit Gimodoe: " + (alias_manager("Felicia Torres") === "Vussit Gimodoe").to_s
  )

puts (alias_manager("Zumo"))