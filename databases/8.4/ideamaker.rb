require 'sqlite3'
require 'faker'


db = SQLite3::Database.new("ideamaker.db")

create_table_cmd = <<-SQL 
  CREATE TABLE IF NOT EXISTS idea_lists(
    id INTEGER PRIMARY KEY,
    date DATE,
    idea_1 VARCHAR(255),
    idea_2 VARCHAR(255),
    idea_3 VARCHAR(255),
    idea_4 VARCHAR(255),
    idea_5 VARCHAR(255),
    idea_6 VARCHAR(255),
    idea_7 VARCHAR(255),
    idea_8 VARCHAR(255),
    idea_9 VARCHAR(255),
    idea_10 VARCHAR(255)
  );
SQL

db.execute(create_table_cmd)

# fake_idea_set = [Date::today]
# 10.times do
#   fake_idea_set << Faker::Hipster.sentence()
# end 

db.execute("INSERT INTO idea_lists(date, idea_1, idea_2, idea_3, idea_4, idea_5, idea_6, idea_7, idea_8, idea_9, idea_10) VALUES ('20010811', 'Replacement knees', 'Insane Carnie Posse', 'New ears', 'Swivel skateboards', 'Replica movie costumes', 'Rock Hall of Fame Wax Museum', 'Bubble Pool Parties', 'Personalized ads', 'Hoverboards', 'Statues that shoot fire')")

#  (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?), fake_idea_set)

