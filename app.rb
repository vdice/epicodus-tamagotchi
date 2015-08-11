require("sinatra")
require("sinatra/reloader")
require("./lib/tamagotchi")
also_reload("lib/**/*.rb")

get("/") do
  erb(:index)
end

post("/name") do
  name = params.fetch("name")
  @my_pet = Tamagotchi.new(name)
  erb(:tamagotchi)
end
