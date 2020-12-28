class CLI

	def run
		welcome
	end

	def welcome
		api=API.new
			api.get_planets
				puts "Welcome to the Jedi Archives, student. There is more knowledge here than anywhere else in the galaxy!"
		Planet.all.each_with_index do |planet, i|
			puts "#{i}: #{planet}" #need to make the array appear starting with 1.
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

#puts "\n\n"
#puts '  ░██████╗░░█████╗░██╗░░░░░░█████╗░██╗░░██╗██╗░░░██╗  ███╗░░░███╗░█████╗░██████╗░  '
#puts '  ██╔════╝░██╔══██╗██║░░░░░██╔══██╗╚██╗██╔╝╚██╗░██╔╝  ████╗░████║██╔══██╗██╔══██╗  '
#puts '  ██║░░██╗░███████║██║░░░░░███████║░╚███╔╝░░╚████╔╝░  ██╔████╔██║███████║██████╔╝  '
#puts '  ██║░░╚██╗██╔══██║██║░░░░░██╔══██║░██╔██╗░░░╚██╔╝░░  ██║╚██╔╝██║██╔══██║██╔═══╝░  '
#puts "  ╚██████╔╝██║░░██║███████╗██║░░██║██╔╝╚██╗░░░██║░░░  ██║░╚═╝░██║██║░░██║██║░░░░░  '
#puts '  ░╚═════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░  ╚═╝░░░░░╚═╝╚═╝░░╚═╝╚═╝░░░░░ \n\n"

# Welcome to the Jedi Archives, student. There is more knowledge here than anywhere else in the galaxy!

# Main Menu
# Please select one of the following options:
# 1. Log into the Jedi Archives' galaxy map

#puts "\n\n"
#puts ' █▀█ █░░ ▄▀█ █▄░█ █▀▀ ▀█▀   █▀ █▀▀ █░░ █▀▀ █▀▀ ▀█▀ █ █▀█ █▄░█  '
#puts " █▀▀ █▄▄ █▀█ █░▀█ ██▄ ░█░   ▄█ ██▄ █▄▄ ██▄ █▄▄ ░█░ █ █▄█ █░▀█\n\n"

#Galaxy Map Interface: Intialized . .. ... Welcome, please select a planet to view its astrographical information. (0-20)
#0-19
#>Planet's information

#Galaxy Map Menu
#Please select one of the following options:
#1. See inhabitants of selected planet (show Resident info method)
#2. Select another planet (loop back to lines 49-54)
#3. Exit


#3: 
#puts "\n\n"
#puts '           ___   '
#puts '          /---\  '
#puts '         | @ @:|		May the Force be  '
#puts '         |  " :|		with you, student!  '
#puts '          \_-_/  '
#puts '        _.d._.b.__  '
#puts '    +"i\  |\_/|  /i"+  '
#puts '    [_| \ |   | / |_]  '
#puts '   .' |  ):===:(  | `.  '
#puts '   |:.'+-" | | "-+`.:|  '
#puts '   |_| |-. |_|   | |_|  '
#puts '   \:\ |-' /+\   ! |:|  '
#puts '    \ \|n._\+/_.n| / /  '
#puts '     \XT::::-::::T/ /  '
#puts '      "l-. `"' .-lXX  '
#puts '       |: \   / :|  '
#puts '       |:  i-i  :|  '
#puts '       |:  | |  :| LS  '
#puts '       |:  | |  :|  '
#puts '      \|;_ | |__;|/  '
#puts '       (__() ()__)  '
#puts "       |:  | |  :|  \n\n"