require "csv"
require "sinatra"
require "pry"
require_relative "./csv.rb"
require_relative "./file_operations.rb"

get '/' do
  accounts = process_csv
  erb(:main, :locals => {:accounts => accounts})
end

get '/full' do
  accounts = process_csv
  erb(:all, :locals => {:accounts => accounts})
end

get '/ind/:name' do
  accounts = process_csv
  name = params["name"]
  erb(:ind, :locals => {:info => accounts[name], :name => name})
end

# Show the form for adding a new row.
get '/add_row_form' do
  erb(:add_row_form)
end

# Process the form's submission and actually add the row.
get '/add_row' do
  target = open("file.txt", 'a+')

  line1 = "Priya"
  line2 = "1/2/2017"
  line3 = "ALAMO DRAFTHOUSE"
  line4 = "Entertainment"
  line5 = "$0.00"
  line6 = "$10.30"

  add_line(target, line1, line2, line3, line4, line5, line6)

  erb(:success)
end