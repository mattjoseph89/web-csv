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

get '/priya' do
  accounts = process_csv
  erb(:priya, :locals => {:accounts => accounts})
end

get '/sonia' do
  accounts = process_csv
  erb(:sonia, :locals => {:accounts => accounts})
end

