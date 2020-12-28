class API
	URL = "https://swapi.dev/api/"

	def get_planets
		(1..6).each do |i|
			uri=("https://swapi.dev/api/films/#{i}")
			body=HTTParty.get(uri)
			body["planets"].each do |planet|
				Planet.new(get_planet(planet))
			end
		end
	end

	def get_planet(id) #fix the id argument
		uri=("#{id}")
		body=HTTParty.get(uri)
		body
	end

	def self.get_resident(id) #fix the id argument
		uri=("#{id}")
		body=HTTParty.get(uri)
		body
    end
end