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

get '/ind' do
  accounts = process_csv
  erb(:ind, :locals => {:accounts => accounts})
end

put '/products/:id' do
  @product = Product.find_by_id(params[:id])

  if @product
    @product.name = "Macbook Pro"
    @product.save
  else
    halt 404, "Product not found"
  end