class Planet
  @@all = []

  def save
    self.class.all << self if @@all.none? { |planet| planet.name == @name }
  end

  def self.all
    @@all
  end

  def initialize(attributes)
    attributes.each do |k, v|
      self.class.attr_accessor k
      send("#{k}=", v)
    end
    save
  end

  def planet_info
    puts 'Name: '.colorize(:yellow) + "#{name}"
    puts 'Rotation Period: '.colorize(:yellow) + "#{rotation_period}"
    puts 'Orbital Period: '.colorize(:yellow) + "#{orbital_period}"
    puts 'Diameter: '.colorize(:yellow) + "#{diameter}"
    puts 'Climate: '.colorize(:yellow) + "#{climate}"
    puts 'Gravity: '.colorize(:yellow) + "#{gravity}"
    puts 'Terrain: '.colorize(:yellow) + "#{terrain}"
    puts 'Surface Water: '.colorize(:yellow) + "#{surface_water}"
    puts 'Population: '.colorize(:yellow) + "#{population}"
  end

  def no_residents
    res = []
    residents.each do |resident|
      res << Resident.new(API.get_resident(resident))
    end
    str = "\nResidents:\n".colorize(:yellow)
    str += "There are no inhabitants on this planet.\n\n" if res.count.zero?
    puts str
    res.each do |resident|
      puts resident.resident_info
    end
  end
end