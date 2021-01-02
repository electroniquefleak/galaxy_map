class CLI
  def welcome_message
    puts "\n\n"
    puts '░██████╗░░█████╗░██╗░░░░░░█████╗░██╗░░██╗██╗░░░██╗  ███╗░░░███╗░█████╗░██████╗░'.colorize(:yellow)
    puts '██╔════╝░██╔══██╗██║░░░░░██╔══██╗╚██╗██╔╝╚██╗░██╔╝  ████╗░████║██╔══██╗██╔══██╗'.colorize(:yellow)
    puts '██║░░██╗░███████║██║░░░░░███████║░╚███╔╝░░╚████╔╝░  ██╔████╔██║███████║██████╔╝'.colorize(:yellow)
    puts '██║░░╚██╗██╔══██║██║░░░░░██╔══██║░██╔██╗░░░╚██╔╝░░  ██║╚██╔╝██║██╔══██║██╔═══╝░'.colorize(:yellow)
    puts '╚██████╔╝██║░░██║███████╗██║░░██║██╔╝╚██╗░░░██║░░░  ██║░╚═╝░██║██║░░██║██║░░░░░'.colorize(:yellow)
    puts "░╚═════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░  ╚═╝░░░░░╚═╝╚═╝░░╚═╝╚═╝░░░░░ \n\n".colorize(:yellow)
    puts '           ___   '.colorize(:cyan)
    puts '          /---\  '.colorize(:cyan)
    puts '         | @ @:|	'.colorize(:cyan) + 'Welcome to the Jedi Archives, student.'.colorize(:yellow)
    puts '         |  " :|	'.colorize(:cyan) +	'There is more knowledge here than anywhere else in the galaxy!'.colorize(:yellow)
    puts '          \_-_/  '.colorize(:cyan)
    puts '        _.d._.b.__  '.colorize(:cyan)
    puts '    +"i\  |\_/|  /i"+  '.colorize(:cyan)
    puts '    [_| \ |   | / |_]  '.colorize(:cyan)
    puts "   .' |  ):===:(  | `.  ".colorize(:cyan)
    puts "   |:.'+-  | |  -+`.:|  ".colorize(:cyan)
    puts '   |_| |-. |_|   | |_|  '.colorize(:cyan)
    puts "   \:\ |-' /+\   ! |:|  ".colorize(:cyan)
    puts '    \ \|n._\+/_.n| / /  '.colorize(:cyan)
    puts '     \XT::::-::::T/ /  '.colorize(:cyan)
    puts '      "l-. `". .-lXX  '.colorize(:cyan)
    puts '       |: \   / :|  '.colorize(:cyan)
    puts '       |:  i-i  :|  '.colorize(:cyan)
    puts '       |:  | |  :| LS  '.colorize(:cyan)
    puts '       |:  | |  :|  '.colorize(:cyan)
    puts '      \|;_ | |__;|/  '.colorize(:cyan)
    puts '       (__() ()__)  '.colorize(:cyan)
    puts "       |:  | |  :|  \n\n".colorize(:cyan)
  end

  def main_menu
    puts "\n\n"
    puts '█▀▄▀█ ▄▀█ █ █▄░█   █▀▄▀█ █▀▀ █▄░█ █░█'.colorize(:yellow)
    puts '█░▀░█ █▀█ █ █░▀█   █░▀░█ ██▄ █░▀█ █▄█'.colorize(:yellow)
    puts "*************************************\n\n"
    puts 'Please select one of the following options:'
    puts "1. Log into the Jedi Archives' galaxy map"
    puts '2. Exit'
    puts "\n\n"
    answer = gets.chomp.to_i
    puts "\n\n"
    puts "Initializing...\n\n".colorize(:yellow)
    answer
  end

  def galaxy_menu
    puts '█▀▀ ▄▀█ █░░ ▄▀█ ▀▄▀ █▄█   █▀▄▀█ ▄▀█ █▀█   █▀▄▀█ █▀▀ █▄░█ █░█'.colorize(:yellow)
    puts '█▄█ █▀█ █▄▄ █▀█ █░█ ░█░   █░▀░█ █▀█ █▀▀   █░▀░█ ██▄ █░▀█ █▄█'.colorize(:yellow)
    puts "************************************************************\n\n"
    puts 'Please select one of the following options:'
    puts '1. See inhabitants of selected planet'
    puts '2. Select another planet'
    puts "3. Exit\n\n"
    gets.chomp.to_i
  end

  def goodbye
    puts "\n\n"
    puts '           ___   '.colorize(:cyan)
    puts '          /---\  '.colorize(:cyan)
    puts '         | @ @:|	'.colorize(:cyan) + 'May the Force be'.colorize(:yellow)
    puts '         |  " :|	'.colorize(:cyan) +	'with you, student!'.colorize(:yellow)
    puts '          \_-_/  '.colorize(:cyan)
    puts '        _.d._.b.__  '.colorize(:cyan)
    puts '    +"i\  |\_/|  /i"+  '.colorize(:cyan)
    puts '    [_| \ |   | / |_]  '.colorize(:cyan)
    puts "   .' |  ):===:(  | `.  ".colorize(:cyan)
    puts "   |:.'+-  | |  -+`.:|  ".colorize(:cyan)
    puts '   |_| |-. |_|   | |_|  '.colorize(:cyan)
    puts "   \:\ |-' /+\   ! |:|  ".colorize(:cyan)
    puts '    \ \|n._\+/_.n| / /  '.colorize(:cyan)
    puts '     \XT::::-::::T/ /  '.colorize(:cyan)
    puts '      "l-. `". .-lXX  '.colorize(:cyan)
    puts '       |: \   / :|  '.colorize(:cyan)
    puts '       |:  i-i  :|  '.colorize(:cyan)
    puts '       |:  | |  :| LS  '.colorize(:cyan)
    puts '       |:  | |  :|  '.colorize(:cyan)
    puts '      \|;_ | |__;|/  '.colorize(:cyan)
    puts '       (__() ()__)  '.colorize(:cyan)
    puts "       |:  | |  :|  \n\n".colorize(:cyan)
  end

  def welcome
    welcome_message
    input = main_menu
    if input == 2
      goodbye
      return
    end

    API.new.get_planets

    loop do
      puts "\n\n"
      puts '█▀█ █░░ ▄▀█ █▄░█ █▀▀ ▀█▀   █▀ █▀▀ █░░ █▀▀ █▀▀ ▀█▀ █ █▀█ █▄░█'.colorize(:yellow)
      puts '█▀▀ █▄▄ █▀█ █░▀█ ██▄ ░█░   ▄█ ██▄ █▄▄ ██▄ █▄▄ ░█░ █ █▄█ █░▀█'.colorize(:yellow)
      puts "************************************************************\n\n"
      Planet.all.each_with_index do |planet, i|
        puts "#{i + 1}: #{planet.name}"
      end
      print "#{'Total Planets:'.colorize(:yellow)} "
      puts Planet.all.count
      puts "\n\nGalaxy Map Interface: Initialized! Welcome, please select a planet to view its astrographical information. (1-20)\n\n".colorize(:yellow)
      choice = gets.chomp.to_i - 1
      puts "\n"
      puts Planet.all[choice].info
      puts "\n\n"

      loop do
        answer = galaxy_menu
        case answer
        when 1
          Planet.all[choice].print_residents
        when 2
          break
        when 3
          goodbye
          return
        else
          Planet.all.each_with_index do |planet, i|
            puts "#{i}: #{planet.name}"
          end
        end
      end
    end
  end
end
