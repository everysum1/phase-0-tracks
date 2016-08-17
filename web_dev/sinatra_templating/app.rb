# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

create_feedback_table = <<-sequel
	CREATE TABLE IF NOT EXISTS feedback(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		feedback TEXT(2000)
	);
sequel

db.execute(create_feedback_table)

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

get '/groups' do 
	@students = db.execute("Select * FROM students")
	erb :groups
end

get '/feedback' do 
	erb :feedback
end

post '/feedback' do 
	db.execute("INSERT INTO feedback (name, feedback) VALUES (?, ?)", [params['name'], params['feedback']])
	redirect '/groups'
end
