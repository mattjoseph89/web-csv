require "csv"
require "sinatra"
require_relative "./csv.rb"

get '/' do
  accounts = process_csv
  erb(:main)
end


