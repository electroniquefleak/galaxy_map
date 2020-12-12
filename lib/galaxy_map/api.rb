class API
    URL = "https://swapi.dev/api/"

    def initialize
    end

    def get_planets(id)
        uri=("https://swapi.dev/api/films/#{id}")
        body=HTTParty.get(uri)
        body["planets"]
    end

    def get_planet(id)
        uri=("#{id}")
        body=HTTParty.get(uri)
        body
    end

    def self.get_resident(id)
        uri=("#{id}")
        body=HTTParty.get(uri)
        body
    end
end