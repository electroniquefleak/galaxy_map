class CLI

	def welcome
		welcome_message
		input = main_menu
			if input == 2
				goodbye
				return
			end

		api=API.new
			api.get_planets
				puts "\n\n"
				puts ' █▀█ █░░ ▄▀█ █▄░█ █▀▀ ▀█▀   █▀ █▀▀ █░░ █▀▀ █▀▀ ▀█▀ █ █▀█ █▄░█  '
				puts " █▀▀ █▄▄ █▀█ █░▀█ ██▄ ░█░   ▄█ ██▄ █▄▄ ██▄ █▄▄ ░█░ █ █▄█ █░▀█\n\n"
				Planet.all.each_with_index do |planet, i|
			puts "#{i+1}: #{planet}"
		end

		print "Total Planets:" + " "
		puts Planet.all.count
		while true
			puts "Galaxy Map Interface: Intialized. . . Welcome, please select a planet to view its astrographical information. (1-20)"
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

def welcome_message
	puts "\n\n"
	puts '  ░██████╗░░█████╗░██╗░░░░░░█████╗░██╗░░██╗██╗░░░██╗  ███╗░░░███╗░█████╗░██████╗░  '
	puts '  ██╔════╝░██╔══██╗██║░░░░░██╔══██╗╚██╗██╔╝╚██╗░██╔╝  ████╗░████║██╔══██╗██╔══██╗  '
	puts '  ██║░░██╗░███████║██║░░░░░███████║░╚███╔╝░░╚████╔╝░  ██╔████╔██║███████║██████╔╝  '
	puts '  ██║░░╚██╗██╔══██║██║░░░░░██╔══██║░██╔██╗░░░╚██╔╝░░  ██║╚██╔╝██║██╔══██║██╔═══╝░  '
	puts '  ╚██████╔╝██║░░██║███████╗██║░░██║██╔╝╚██╗░░░██║░░░  ██║░╚═╝░██║██║░░██║██║░░░░░  '
	puts "  ░╚═════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░  ╚═╝░░░░░╚═╝╚═╝░░╚═╝╚═╝░░░░░ \n\n"

	puts "Welcome to the Jedi Archives, student. There is more knowledge here than anywhere else in the galaxy!"
end

def main_menu
	puts "Main Menu"
	puts "Please select one of the following options:"
	puts "1. Log into the Jedi Archives' galaxy map"
	puts "2. Exit"
	answer = gets.chomp.to_i
	answer
end

#Galaxy Map Interface: Intialized . .. ... Welcome, please select a planet to view its astrographical information. (0-20)
#0-19
#>Planet's information

#Galaxy Map Menu
#Please select one of the following options:
#1. See inhabitants of selected planet (show Resident info method)
#2. Select another planet (loop back to lines 49-54)
#3. Exit


def goodbye
	puts "\n\n"
	puts '           ___   '
	puts '          /---\  '
	puts '         | @ @:|		May the Force be  '
	puts '         |  " :|		with you, student!  '
	puts '          \_-_/  '
	puts '        _.d._.b.__  '
	puts '    +"i\  |\_/|  /i"+  '
	puts '    [_| \ |   | / |_]  '
	puts "   .' |  ):===:(  | `.  "
	puts "   |:.'+-  | |  -+`.:|  "
	puts '   |_| |-. |_|   | |_|  '
	puts "   \:\ |-' /+\   ! |:|  "
	puts '    \ \|n._\+/_.n| / /  '
	puts '     \XT::::-::::T/ /  '
	puts '      "l-. `". .-lXX  '
	puts '       |: \   / :|  '
	puts '       |:  i-i  :|  '
	puts '       |:  | |  :| LS  '
	puts '       |:  | |  :|  '
	puts '      \|;_ | |__;|/  '
	puts '       (__() ()__)  '
	puts "       |:  | |  :|  \n\n"
end