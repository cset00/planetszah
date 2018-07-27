require 'sinatra'
require 'sinatra/reloader'
require 'pry'

require_relative 'db_config'
require_relative 'models/planet'
# require_relative 'models/moon'

get '/' do
  @planets = Planet.all.order ("distance_fr_sun ASC")
  erb :index
end

get '/planets/new' do
  erb :new
end

get '/planets/:id' do
  @planet = Planet.find(params[:id]) #find is always by ID. #find_by can use anything..?
  @planet_diameter = @planet['diameter'].to_s.reverse.gsub(/...(?=.)/,'\&,').reverse
  @planet_distance_fr_sun = @planet['distance_fr_sun'].to_s.reverse.gsub(/...(?=.)/,'\&,').reverse
  # @moons = @planet.moons
  erb :planet_details
end

post '/planets' do
  planet = Planet.new
  planet.name = params[:name]
  planet.diameter = params[:diameter]
  planet.distance_fr_sun = params[:distance_fr_sun]
  # planet.moons = params[:moons]
  planet.image_url = params[:image_url]
  planet.save

  redirect '/'
end

delete '/planets/:id' do
  planet = Planet.find(params[:id])
  planet.destroy
  redirect '/'
end

get '/planets/:id/edit' do
  @planet = Planet.find(params[:id])
  erb :edit
end

put '/planets/:id' do # doesn't work... :/
  planet = Planet.find(params[:id])
  planet.name = params[:name]
  planet.diameter = params[:diameter]
  planet.distance_fr_sun = params[:distance_fr_sun]
  # planet.moons = params[:moons]
  planet.image_url = params[:image_url]
  planet.save

  redirect "/planets/#{params[:id]}"
  binding.pry
end



