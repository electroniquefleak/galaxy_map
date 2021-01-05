class API

  def get_planets
    (1..6).each do |i|
      uri = "https://swapi.dev/api/films/#{i}"
      body = HTTParty.get(uri)
      body['planets'].each do |planet|
        Planet.new(HTTParty.get(planet))
      end
    end
  end

  def self.get_resident(uri)
    HTTParty.get(uri)
  end
end
