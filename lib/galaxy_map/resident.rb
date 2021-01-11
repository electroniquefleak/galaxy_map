class Resident
  @@all = []

  def save
    self.class.all << self if @@all.none? { |resident| resident.name == @name }
  end

  def self.all
    @@all
  end

  def initialize(attributes)
    attributes&.each do |k, v|
      self.class.attr_accessor k
      send("#{k}=", v)
    end
    save
  end

  def resident_info
    puts 'Name: '.colorize(:yellow) + "#{name}"
    puts 'Height: '.colorize(:yellow) + "#{height}"
    puts 'Mass: '.colorize(:yellow) + "#{mass}"
    puts 'Hair Color: '.colorize(:yellow) + "#{hair_color}"
    puts 'Skin Color: '.colorize(:yellow)  +  "#{skin_color}"
    puts 'Eye Color: '.colorize(:yellow) + "#{eye_color}"
    puts 'Birth Year: '.colorize(:yellow) + "#{birth_year}"
    puts 'Gender: '.colorize(:yellow) + "#{gender}"
  end
end