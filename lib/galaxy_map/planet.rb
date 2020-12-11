class Planet
    @@all = []
    attr_accessor :name, :rotation_period, :orbital_period, :diameter, :climate, :gravity, :terrain, :surface_water, :population, :residents, :films, :created, :edited, :url

    def save
        self.class.all << self if @@all.none? {|planet|planet.name==@name}
    end

    def self.all
        @@all
    end

    def initialize(attributes=nil)
        if attributes
            attributes.each do |k,v|
            #puts k
            #puts v
              self.send("#{k}=", v)
            end
        end
        save
    end

    def to_s
        "#{@name}"
    end

    def info
    end
end