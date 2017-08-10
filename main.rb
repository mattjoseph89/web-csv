require "csv"
require "sinatra"
require "pry"
require_relative "./csv.rb"
require_relative "./file_operations.rb"

# attempting to connect login to users

get '/' do
  erb(:login)
  target=open("account.log", 'r+')
  users.include?[params["name"],params["password"]]
end

#main homepage....eventually goes away???

get '/main' do
  accounts = process_csv
  erb(:main, :locals => {:accounts => accounts})
end

#admin login path to show all accounts

get '/full' do
  accounts = process_csv
  erb(:all, :locals => {:accounts => accounts})
end

#individual login path to show single account

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
  target = open("accounts.csv", 'a+')
  name = params["name"]
  date = params["date"]
  payee = params["payee"]
  category = params["category"]
  outflow = params["outflow"]
  inflow = params["inflow"]

  line1 = name
  line2 = date
  line3 = payee
  line4 = category
  line5 = outflow
  line6 = inflow

  add_line(target, line1, line2, line3, line4, line5, line6)

  erb(:success)
end