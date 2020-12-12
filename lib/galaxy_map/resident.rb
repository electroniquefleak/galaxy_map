class Resident
    @@all = []
    attr_accessor :name, :height, :mass, :hair_color, :skin_color, :eye_color, :birth_year, :gender, :homeworld, :films, :species, :vehicles, :starships, :created, :edited, :url
    
    def save
        self.class.all << self
    end

    def self.all
        @@all
    end
end