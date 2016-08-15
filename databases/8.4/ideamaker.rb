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

db.execute(create_table_cmd)

# db.execute("INSERT INTO idea_lists(idea_1, idea_2, idea_3, idea_4, idea_5, idea_6, idea_7, idea_8, idea_9, idea_10, date) VALUES ('Replacement knees', 'Insane Carnie Posse', 'New ears', 'Swivel skateboards', 'Replica movie costumes', 'Rock Hall of Fame Wax Museum', 'Bubble Pool Parties', 'Personalized ads', 'Hoverboards', 'Statues that shoot fire', Date('now'))")



def seed_row(db)

  fake_idea_set = []
  fake_idea_set << Faker::Date.between(2.years.ago, Date.today).to_s

  10.times do
    fake_idea_set.unshift(Faker::Hipster.sentence(3))
  end 

  db.execute("INSERT INTO idea_lists(idea_1, idea_2, idea_3, idea_4, idea_5, idea_6, idea_7, idea_8, idea_9, idea_10, date) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", fake_idea_set)
end

seed_row(db)

# ideas = db.execute("SELECT * FROM idea_lists")
# ideas.each do |list|
#   puts list.inspect
# end

100.times do 
  seed_row(db)
end
