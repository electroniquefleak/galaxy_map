class Resident
	@@all = []
	attr_accessor :name, :height, :mass, :hair_color, :skin_color, :eye_color, :birth_year, :gender, :homeworld, :films, :species, :vehicles, :starships, :created, :edited, :url

	def save
		self.class.all << self
	end

	def self.all
		@@all
	end

	def initialize(attributes=nil)
		if attributes
			attributes.each do |k,v|
				self.send("#{k}=", v)
			end
		end
		save
	end

	def to_s
		"#{@name}"
	end

	def info 
		"Name: #{name}" + "\n" + "Height: #{height}" + "\n" + "Mass: #{mass}" + "\n" + "Hair Color: #{hair_color}" + "\n" + "Skin Color: #{skin_color}" + "\n" + "Eye Color: #{eye_color}" + "\n" + "Birth Year: #{birth_year}" + "\n" + "Gender: #{gender}" + "\n"
	end
end