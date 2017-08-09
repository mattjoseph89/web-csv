require "csv"
require "sinatra"
require "pry"
require_relative "./csv.rb"

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

