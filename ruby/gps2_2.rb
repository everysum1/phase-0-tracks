#RELEASE 1


# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # splitting the string to have array of strings
  # set default quantity
  # iterate through the array to form the hash
  # print the list to the console [can you use one of your other methods here?]
# output: hash list


def create_list(items)
  hash = Hash.new(0)
  items.split(" ").each do |item|
    hash[item] += 1
  end
  p hash
end
  

list = create_list("banana apple banana banana banana")


# Method to add an item to a list
# input: item name and optional quantity
# steps: assign the item to the hash we create in create_list method as key-value  pair
# output: hash list

def add_item(list, item, qty=1)
  list[item] = qty
  p "#{item} : #{list[item]}"
end

add_item(list, "milk")

# Method to remove an item from the list
# input: item name
# steps: delete method to remove the item from hash
# output: hash

def remove_item(list, item)
  list.delete(item)
  p list
end

#remove_item(list,"apple")

# Method to update the quantity of an item
# input: item name and quantity
# steps: assign the new value for the item(key),like overwriting
# output: hash list

def update(list, item, new_qty)
 add_item(list, item, new_qty)
end

#update(list, "banana", 6)


# Method to print a list and make it look pretty
# input: no parameter
# steps: each method on our hash to print some sentence using the key #{} and value
# output: strings(sentences)

def display(list)
  list.each { |item, qty| puts "There are #{qty} #{item}(s) on your list." }
end

#display(list)

# RELEASE 3

list = create_list("apple orange milk")
add_item(list, "lemonade", 2)
add_item(list, "tomato", 3)
add_item(list, "onion", 1)
add_item(list, "ice cream", 4)
remove_item(list, "lemonade")
update(list, "ice cream", 1)
display(list)



# RELEASE 5

# # What did you learn about pseudocode from working on this challenge?

# I learned that it makes things much easier than trying to put your ideas into code 
# directly and helps a lot with planning things out so if you have an error somewhere
# you can catch it much more easily because you know what each part of your code 
# is trying to do precisely. 

# # What are the tradeoffs of using arrays and hashes for this challenge?

# Arrays are easier to populate because you have just one value to assign, rather than 
# a key or a value so they are easier to iterate over and to push values into.  They 
# aren't always the right tool for the job though, and in this case we needed a hash 
# because we had two values in each case that had a relationship with each other and
# that was important to express and keep track of throughout the whole process.  

# # What does a method return?

# A method returns the last evaluated line implicitly

# # What kind of things can you pass into methods as arguments?

# You can pass any data structure into a method as an argument.  We passed strings,
# integers, and hashes into our methods for this exercise.

# # How can you pass information between methods?

# One way to pass info between methods is saving the output of one to a variable and 
# passing that variable into another method as an argument.  

# # What concepts were solidified in this challenge, and what concepts are still confusing?

# I was able to learn about passing data structures and information between methods 
# while outside of a class.  My first instinct was to use a class, but its good
# to know how to do without one if necessary.  Nothing was confusing or out of left
# field for me.