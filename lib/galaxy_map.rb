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

module GalaxyMap
  class Error < StandardError; end
  # Your code goes here...
end

api=API.new
api.get_planets