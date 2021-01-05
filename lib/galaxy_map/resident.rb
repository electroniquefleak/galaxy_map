class Resident
  @@all = []

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def initialize(attributes = nil)
    attributes&.each do |k, v|
      self.class.attr_accessor k
      send("#{k}=", v)
    end
    save
  end

  def resident_info
    puts "Name: #{name}"
    puts "Height: #{height}"
    puts "Mass: #{mass}"
    puts "Hair Color: #{hair_color}"
    puts "Skin Color: #{skin_color}"
    puts "Eye Color: #{eye_color}"
    puts "Birth Year: #{birth_year}"
    puts "Gender: #{gender}"
  end
end
