class Planet
	@@all = []

	def save
		self.class.all << self if @@all.none? {|planet|planet.name==@name}
	end

	def self.all
		@@all
	end

	def initialize(attributes=nil)
		if attributes
			attributes.each do |k,v|
				self.class.attr_accessor k
				self.send("#{k}=", v)
			end
		end
		save
	end

	def to_s
		"#{name}"
	 end

    def info
        res = []
		residents.each do |resident|
			res<<Resident.new(API.get_resident(resident))
		end
		str = "Name: #{name}" + "\n" + "Rotation Period: #{rotation_period}" + "\n" + "Orbital Period: #{orbital_period}" + "\n" + "Diameter: #{diameter}" + "\n" + "Climate: #{climate}" + "\n" + "Gravity: #{gravity}" + "\n" + "Terrain: #{terrain}" + "\n" + "Surface Water: #{surface_water}" + "\n" + "Population: #{population}"
		puts str
		str = ""
		str
	end
	
	def print_residents
		str = ""
		res = []
		residents.each do |resident|
			res<<Resident.new(API.get_resident(resident))
		end
		str = "Residents:" + "\n"
		res.each do |resident|
			str += resident.info + "\n"
		end
		str
	end
end