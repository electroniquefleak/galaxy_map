class Planet
  @@all = []

  def save
    self.class.all << self if @@all.none? { |planet| planet.name == @name }
  end

  def self.all
    @@all
  end

  def initialize(attributes = nil)
    if attributes
      attributes.each do |k, v|
        self.class.attr_accessor k
        send("#{k}=", v)
      end
    end
    save
  end

  def info
    res = []
    residents.each do |resident|
      res << Resident.new(API.get_resident(resident))
    end
    puts "Name: #{name}"
    puts "Rotation Period: #{rotation_period}"
    puts "Orbital Period: #{orbital_period}"
    puts "Diameter: #{diameter}"
    puts "Climate: #{climate}"
    puts "Gravity: #{gravity}"
    puts "Terrain: #{terrain}"
    puts "Surface Water: #{surface_water}"
    puts "Population: #{population}"
  end

  def print_residents
    str = ''
    res = []
    residents.each do |resident|
      res << Resident.new(API.get_resident(resident))
    end
    str = "\nResidents:\n".colorize(:yellow)
    str += "There are no residents.\n\n" if res.count == 0
    res.each do |resident|
      str += resident.info + "\n"
    end
    str
  end
end
