require "httparty"
require "net/http"
require "pry"
require "swapi"

require_relative "./galaxy_map/version"
require_relative "./galaxy_map/api"
require_relative "./galaxy_map/cli"
require_relative "./galaxy_map/films"
require_relative "./galaxy_map/planets"

module GalaxyMap
  class Error < StandardError; end
  # Your code goes here...
end
