require ('sinatra')
require ('sinatra/reloader')
require ('./lib/parcel')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/calculate') do
  @length = params.fetch('length')
  @width = params.fetch('width')
  @height = params.fetch('height')
  @weight = params.fetch('weight')
  @speed = params.fetch('speed')
  new_parcel = Parcel.new(@length, @width, @height, @weight, @speed)
  @shipping_cost = new_parcel.cost_to_ship()
  erb(:calculate)
end
