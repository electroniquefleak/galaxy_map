require "httparty"
require "net/http"
require "pry"
require "swapi"
require "json"

require_relative "./galaxy_map/version"
require_relative "./galaxy_map/api"
require_relative "./galaxy_map/cli"
require_relative "./galaxy_map/film"
require_relative "./galaxy_map/planet"
require_relative "./galaxy_map/resident"

module GalaxyMap
  class Error < StandardError; end
  # Your code goes here...
end

api=API.new
(1..6).each do |i|
planets=api.get_planets(i)
planets.each do |planet|
Planet.new(api.get_planet(planet))
end
end
puts "Welcome to the Jedi Archives, student. There is more knowledge here than anywhere else in the galaxy!"
Planet.all.each_with_index do |planet, i|
  puts "#{i}: #{planet}"
end
print "Total Planets:" + " "
puts Planet.all.count
while true
puts "Galaxy Map Interface: Intialized. . . Welcome, please select a planet to view its astrographical information."
choice = gets.chomp.to_i
puts Planet.all[choice].info
puts "Would you like to select another planet? (Y/N)"
answer = gets.chomp
if answer.downcase == "no"
  break
else 
  Planet.all.each_with_index do |planet, i|
  puts "#{i}: #{planet}"
end
end
end
