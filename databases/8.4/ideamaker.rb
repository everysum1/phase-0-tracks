require 'sqlite3'
require 'faker'
require 'active_support/all'


db = SQLite3::Database.new("ideamaker.db")

create_table_cmd = <<-SQL 
  CREATE TABLE IF NOT EXISTS idea_lists(
    id INTEGER PRIMARY KEY,
    idea_1 VARCHAR(255),
    idea_2 VARCHAR(255),
    idea_3 VARCHAR(255),
    idea_4 VARCHAR(255),
    idea_5 VARCHAR(255),
    idea_6 VARCHAR(255),
    idea_7 VARCHAR(255),
    idea_8 VARCHAR(255),
    idea_9 VARCHAR(255),
    idea_10 VARCHAR(255),
    date DATE
  );
SQL

$INSERT_ROW = <<-SQL
  INSERT INTO idea_lists(
    idea_1, idea_2, idea_3, idea_4, idea_5, idea_6, idea_7, idea_8, idea_9, idea_10, date) 
  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
SQL

db.execute(create_table_cmd)

# db.execute("INSERT INTO idea_lists(idea_1, idea_2, idea_3, idea_4, idea_5, idea_6, idea_7, idea_8, idea_9, idea_10, date) VALUES ('Replacement knees', 'Insane Carnie Posse', 'New ears', 'Swivel skateboards', 'Replica movie costumes', 'Rock Hall of Fame Wax Museum', 'Bubble Pool Parties', 'Personalized ads', 'Hoverboards', 'Statues that shoot fire', Date('now'))")

def seed_row(db)

  fake_idea_set = []
  fake_idea_set << Faker::Date.between(2.years.ago, Date.today).to_s

  10.times do
    fake_idea_set.unshift(Faker::Hipster.sentence(3))
  end 

  db.execute($INSERT_ROW, fake_idea_set)
end


current_db = db.execute("SELECT * FROM idea_lists;") 
if current_db.empty?
  100.times do 
    seed_row(db)
  end
end

seed_row(db)

# ideas = db.execute("SELECT * FROM idea_lists")
# ideas.each do |list|
#   puts list.inspect
# end

### DRIVER CODE ###
puts 
puts "*******************************IDEA MAKER**************************************************************"
puts
puts "As wise men say, the mind is a muscle."
puts "Let's train yours to come up with the next big thing..."
puts "We're going to make a list of 10 ideas."
puts "Don't worry, they don't have to be good...we just gotta get those reps in!" 
print "Do you want to see the last list you made before we get started? Type 'y' for yes, OR any other key to skip the review...     "
puts
previous = gets.chomp
if previous.downcase == 'y'
  puts
  puts
  puts "Here is your last list..."
  puts
  database = db.execute("SELECT * FROM idea_lists;")
  # puts database.last.inspect
  database.last.each_with_index do |idea, idx|
    unless idx == 0 || idx == 11
      puts "#{idx}: #{idea}"
    end
  end
  puts 
end 

response = ''

until response == 'y'
  puts 
  until response.downcase == "quit"
    puts
    puts "Ok, are you ready? Let's begin:"
    puts
    idea_list = []
    10.times do |x|
      # ask for an idea with number
      puts "What's idea number #{x+1}?"
      # save that idea in a variable
      idea = gets.chomp
      puts
      # push that variable into a list
      idea_list << idea 
    end
    puts
    # push today's date into the list at the end
    idea_list << Date.today.to_s

    db.execute("INSERT INTO idea_lists(idea_1, idea_2, idea_3, idea_4, idea_5, idea_6, idea_7, idea_8, idea_9, idea_10, date) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", idea_list)

    puts "Great job! Ok, here's what you came up with today..."
    idea_list.each_with_index do |idea, idx|
      if idea != idea_list.last
        puts "#{idx+1}: #{idea}"
      end
    end

    puts
    puts "Let's do another list! Press any key when you're ready to begin or enter 'quit' to exit this app.."
    response = gets.chomp
  end
  puts
  puts "Are you sure you want to quit? Come on, one more list..."
  puts "Type 'y' if you REALLY want to quit, or any other letter to get back to comin up with BRILLIANT ideas..."
  response = gets.chomp
end
puts
puts "Ok, bye for now. Let's train later ;-)"
puts
puts "***************************************************************************"
puts
