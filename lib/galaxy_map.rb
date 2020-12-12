require "httparty"
require "net/http"
require "pry"
require "swapi"
require "json"

require_relative "./galaxy_map/version"
require_relative "./galaxy_map/api"
require_relative "./galaxy_map/cli"
require_relative "./galaxy_map/planet"
require_relative "./galaxy_map/resident"

module GalaxyMap
  class Error < StandardError; end
  # Your code goes here...
end

