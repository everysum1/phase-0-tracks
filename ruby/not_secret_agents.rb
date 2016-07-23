# 1. An encrypt method that advances every letter of a string one letter forward. 
# So "abc" would become "bcd". For now, you can assume lowercase input and output.
#  Any space character should remain a space character -- no change made.

# given a string
# for every letter in that string
  # if the value at that string's index is not a space
    # replace that letter with the next letter in the alphabet
#return the replaced string

def encrypt(str) 
  alpha = "abcdefghijklmnopqrstuvwxyz"
  idx = 0
  while idx < str.length
    if str[idx] != " "
      str[idx] = alpha[(alpha.index(str[idx]).next) % 26]
    end
    idx += 1
  end
  str
end



# 2. A decrypt method that reverses the process above. Note that Ruby doesn't have 
# a built-in method for going backward one letter. How can you find out where a 
# letter is in the alphabet, then access the letter right before it? Hint: In the 
# IRB session above, you learned how to ask a string for the index of a letter. 
# "abcdefghijklmnopqrstuvwxyz" counts as a string.

# given a string
# for every letter in that string
  # if the value at a given string's index is not a space
    # replace that letter with the letter before it in the alphabet
#return the replaced string

def decrypt(str)
  alpha = "abcdefghijklmnopqrstuvwxyz"
  idx = 0
  while idx < str.length
      if str[idx] != " "
        str[idx] = alpha[alpha.index(str[idx]) -1]
      end
    idx += 1
  end
  str
end


# puts( 'encrypt("abc") == "bcd": ' + ( (encrypt"abc") == "bcd").to_s )

# puts( 'encrypt("zed") == "afe": ' + ( (encrypt"zed") == "afe").to_s )

# puts( 'decrypt("bcd") == "abc": ' + ( (decrypt"bcd") == "abc").to_s )

# puts( 'decrypt("afe") == "zed": ' + ( (decrypt"afe") == "zed").to_s )

# nested method call: works because ruby allows you to chain methods together, 
# reading from innermost method call out and using the return value of the last 
# method call as the argument for the next. built in or extended class methods
# can also be chained with the dot operator

puts decrypt(encrypt("swordfish"))

# user interface: 

puts "Would you like to encrypt or decrypt a password?"
option = gets.chomp
puts "What is the password?"
pw = gets.chomp

if option.downcase == "encrypt"
  puts "Your encrypted password is: #{encrypt(pw)}"
else 
  puts "Your decrypted password is: #{decrypt(pw)}"
end