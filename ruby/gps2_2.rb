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



# RELEASE 6