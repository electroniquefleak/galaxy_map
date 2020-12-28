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
		str = "Rotation Period: #{rotation_period}" + "\n" + "Orbital Period: #{orbital_period}" + "\n" + "Diameter: #{diameter}" + "\n" + "Climate: #{climate}" + "\n" + "Gravity: #{gravity}" + "\n" + "Terrain: #{terrain}" + "\n" + "Surface Water: #{surface_water}" + "\n" + "Population: #{population}"
		puts str
		str = ""
		puts "Would you like to see the inhabitants of this planet?"
		answer = gets.chomp
		if answer.downcase == "yes"
			str = "Residents:" + "\n"
			res.each do |resident|
				str += resident.info + "\n"
			end
		end
		str
    end
end