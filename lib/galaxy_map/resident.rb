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
        "#{name}" + "\n" + "#{height}" + "\n" + "#{mass}" + "\n" + "#{hair_color}" + "\n" + "#{eye_color}" + "\n" + "#{birth_year}" + "\n" + "#{gender}" + "\n" + "#{homeworld}" + "\n" + "#{films}" + "\n" + "#{species}"+ "\n" + "#{vehicles}" + "\n" + "#{starships}"
    end
end