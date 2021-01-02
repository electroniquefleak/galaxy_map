class Planet
  @@all = []

  def save
    self.class.all << self if @@all.none? { |planet| planet.name == @name }
  end

  def self.all
    @@all
  end

  def initialize(attributes = nil)
    attributes.each do |k, v|
      self.class.attr_accessor k
      send("#{k}=", v)
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
    str += "There are no inhabitants on this planet.\n\n" if res.count.zero?
    puts str
    res.each do |resident|
      puts resident.info
    end
  end
end
