require "csv"
require "sinatra"
require "pry"
require_relative "./csv.rb"

get '/' do
  accounts = process_csv
  erb(:main, :locals => {:accounts => accounts})
end

get '/full' do
  erb(:all, :locals => {:accounts => accounts})
end

get '/priya' do
  erb(:accounts)
end

# get '/accounts' do
#   @name = params['name']
#   erb(:accounts)
# end
