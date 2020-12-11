class Planet
    @@all = []
    attr_accessor :name, :rotation_period, :orbital_period, :diameter, :climate, :gravity, :terrain, :surface_water, :population, :residents, :films

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    if attributes
        attributes.each do |k,v|
          self.send("#{k}=", v)
        end
    end
end