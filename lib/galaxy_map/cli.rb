class CLI

    def run
        welcome
    end

    def welcome
        api=API.new
        (1..6).each do |i|
            planets=api.get_planets(i)
            planets.each do |planet|
                Planet.new(api.get_planet(planet))
            end
        end
    
        puts "Welcome to the Jedi Archives, student. There is more knowledge here than anywhere else in the galaxy!"
        Planet.all.each_with_index do |planet, i|
          puts "#{i}: #{planet}"
        end

        print "Total Planets:" + " "
        puts Planet.all.count
        while true
            puts "Galaxy Map Interface: Intialized. . . Welcome, please select a planet to view its astrographical information. (0-20)"
            choice = gets.chomp.to_i
            puts Planet.all[choice].info
            puts "Would you like to select another planet? (YES/NO)"
            answer = gets.chomp
            if answer.downcase == "no"
                puts "May the Force be with you, student!"
                break
            else 
            Planet.all.each_with_index do |planet, i|
                puts "#{i}: #{planet}"
                end
            end
        end
    end
end