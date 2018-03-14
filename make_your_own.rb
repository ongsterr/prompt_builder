# Terminal Prompt Builder

# Username, Hostname, Shell, Shell Version, Path to Current Directory, Current Directory
# Git status, Error Code
# Date, 24hr time, 12hr time
# Emoji
# Other Characters

# system ('nano ~/.bash_profile')
# code = ">> "
# system ('echo '+ "PS1=" + %Q{"#{code}"} + '>>~/.bash_profile')

require 'colorize'
require 'terminal-table'
# require 'activerecord'
# require 'terminal-progress_bar'

def make_your_own
    # Arrays of options
    menu_1 = ["Basic Elements", "Date/Time Element", "Emoji", "Other Characters","Edit Prompt Design", "I am done!"]
    basic_element = ["Username", "Hostname", "Shell", "Shell Version", "Path to Current Directory", "Current Directory", "Exit"]
    time_element = ["Date", "24hr Time", "12hr Time", "Exit"]
    emoji_top = ["🐰 ","🤖 ","🔥 ","❤️ ","🤷 ","🎯 ","💭 ","💯 ","🈲 ","☠️ "]
    emoji_animal = ["🙈 ","🙉 ","🙊 ","🦊 ","🐶 ","🦄 ","🐷 ","🐼 ","🐾 ","🐔 ","🐉 ","🕊️ "]
    emoji_smileys = ["😁 ","🤣 ","😎 ","😊 ","😍 ","🤗 ","🤩 ","🤔 ","😝 ","🤑 ","😤 ","😱 "]
    emoji_food = ["🍋 ","🍌 ","🥑 ","🥦 ","🥨 ","🍕 ","🍱 ","🍣 ","🎂 ","🍦 ","🍺 "]
    emoji_travel = ["⛩️ ","🗼 ","🗽 ","🗿 ","🗻 ","🎑 "]
    emoji_symbol = ["☠️ ","💘 ","💢 ","💭 ","🀄 ","⛔ ","♻️ ","💯 ","🎯 ","🈲 ","🤷 ","🔥 "]
    emoji_menu = ["Trending [Preview: #{emoji_top.join(" ")}]", "Animals [Preview: #{emoji_animal.join(" ")}]", "Smileys [Preview: #{emoji_smileys.join(" ")}]", "Food [Preview: #{emoji_food.join(" ")}]", "Travel [Preview: #{emoji_travel.join(" ")}]", "Symbol [Preview: #{emoji_symbol.join(" ")}]"]
    emojis = [emoji_top,emoji_animal,emoji_smileys,emoji_food,emoji_travel,emoji_symbol]
    color = ["Default (White)", "Red", "Green", "Yellow", "Blue", "Magenta", "Cyan"]
    output = []
    terminal_code = []
    color_menu = """    (1) Default (White)
    (2) #{"Red".colorize(:red)}
    (3) #{"Green".colorize(:green)}
    (4) #{"Yellow".colorize(:yellow)}
    (5) #{"Blue".colorize(:blue)}
    (6) #{"Magenta".colorize(:magenta)}
    (7) #{"Cyan".colorize(:cyan)}
    """
    divider = "-" * 100
    remove_elements = ['\u ','\h ','\s ','\v ','\w ','\W ','\d ','\A ','\@ ']

    # Hash for each option
    # Hashes for basic_element_2 array
    username = {
        number: 1,
        name: "Username",
        code: '\u ',
        output: "user"
    }

    hostname = {
        number: 2,
        name: "Hostname",
        code: '\h ',
        output: "host"
    }

    shell = {
        number: 3,
        name: "Shell",
        code: '\s ',
        output: "bash"
    }

    shell_version = {
        number: 4,
        name: "Shell Version",
        code: '\v ',
        output: "4.2.1"
    }

    path_to_current_dir = {
        number: 5,
        name: "Path to Current Directory",
        code: '\w ',
        output: "~/dir"
    }

    current_dir = {
        number: 6,
        name: "Current Directory",
        code: '\W ',
        output: "dir"
    }

    # Hashes for date_2 array
    date = {
        number: 1,
        name: "Date",
        code: '\d ',
        output: "Wed Feb 28"
    }

    time_24hr = {
        number: 2,
        name: "24hr Time",
        code: '\A ',
        output: "16:35"
    }

    time_12hr = {
        number: 3,
        name: "12hr Time",
        code: '\@ ',
        output: "04:35 PM"
    }

    # Hashes for color_2 array
    default = {
        number: 1,
        name: "Default (White)",
        code: ""
    }

    red = {
        number: 2,
        name: "Red".colorize(:red),
        code: '\e[31m '
    }

    green = {
        number: 3,
        name: "Green".colorize(:green),
        code: '\e[32m '
    }

    yellow = {
        number: 4,
        name: "Yellow".colorize(:yellow),
        code: '\e[33m '
    }

    blue = {
        number: 5,
        name: "Blue".colorize(:blue),
        code: '\e[34m '
    }

    magenta = {
        number: 6,
        name: "Magenta".colorize(:magenta),
        code: '\e[35m '
    }

    cyan = {
        number: 7,
        name: "Cyan".colorize(:cyan),
        code: '\e[36m '
    }

    # Array for option hashes
    basic_element_2 = [username, hostname, shell, shell_version, path_to_current_dir, current_dir]
    date_2 = [date, time_24hr, time_12hr]
    color_2 = [default, red, green, yellow, blue, magenta, cyan]

    # Start of main codes
    selection_1 = 0
    system ("clear")
    until selection_1 == 6 do
        puts "Your new C-Promptz™ is going to look like this..."

        table = Terminal::Table.new do |t|
            t.add_row []
            t.add_row ["#{output.join}"]
            t.add_row []
            t.style = {:width => 100, :padding_left => 4}
        end
        puts table
        #puts """Terminal C-Promptz™ code:
    #{"----------------------------------------------------------".colorize(:red)}
    #{terminal_code.join}
    #{"----------------------------------------------------------".colorize(:red)}
        #"""
        puts " "
        puts "What do you want to add to your C-Promptz™ ? Pick a number!"
        menu_1.each_with_index do |s, index|
            print "  "
            print "(#{index+1}) #{s}"
            puts " "
        end
        print "Your selection: "
        selection_1 = gets.chomp.to_i
        puts divider
        
        if selection_1 == 1 # Insert basic element
            puts "Please select the element you wants to add to your C-Promptz™."
            basic_element.each_with_index do |b, index|
                print "  "
                print "(#{index+1}) #{b}"
                puts " "
            end
            print "Your selection: "
            selection_2 = gets.chomp.to_i
            basic_element_2.each do |key|
                if selection_2 == key[:number]
                    output.push(key[:output])
                    terminal_code.push(key[:code])
                end
            end
            puts divider
            if selection_2 == 7
                puts ">" * 20
            elsif selection_2 <= basic_element_2.count
                puts "Any colour preference?"
                puts color_menu
                print "Your selection: "
                selection_3 = gets.chomp.to_i
                if selection_3 == 1
                    output[-1] = output[-1].colorize(:White)
                elsif selection_3 == 2
                    output[-1] = output[-1].colorize(:red)
                    terminal_code.insert(terminal_code.count-1,'\e[31m')
                elsif selection_3 == 3
                    output[-1] = output[-1].colorize(:green)
                    terminal_code.insert(terminal_code.count-1,'\e[32m')
                elsif selection_3 == 4
                    output[-1] = output[-1].colorize(:yellow)
                    terminal_code.insert(terminal_code.count-1,'\e[33m')
                elsif selection_3 == 5
                    output[-1] = output[-1].colorize(:blue)
                    terminal_code.insert(terminal_code.count-1,'\e[34m')
                elsif selection_3 == 6
                    output[-1] = output[-1].colorize(:magenta)
                    terminal_code.insert(terminal_code.count-1,'\e[35m')
                elsif selection_3 == 7
                    output[-1] = output[-1].colorize(:cyan)
                    terminal_code.insert(terminal_code.count-1,'\e[36m')
                else
                    puts "Invalid selection. Please reselect!"
                    output.pop
                    sleep 1
                end
            else
                puts "Invalid selection. Please reselect!"
            end
            system ("clear")

        elsif selection_1 == 2 # Insert date/time element
            puts "Please select the element you wants to add to your C-Promptz™."
            time_element.each_with_index do |t, index|
                print "  "
                print "(#{index+1}) #{t}"
                puts " "
            end
            print "Your selection: "
            selection_2 = gets.chomp.to_i
            date_2.each do |key|
                if selection_2 == key[:number]
                    output.push(key[:output])
                    terminal_code.push(key[:code])
                end
            end
            if selection_2 == 4 # Exit menu
                puts ">" * 20
            elsif selection_2 <= date_2.count 
                puts "Any colour preference?"
                puts color_menu
                print "Your selection: "
                selection_3 = gets.chomp.to_i
                if selection_3 == 1
                    output[-1] = output[-1].colorize(:White)
                elsif selection_3 == 2
                    output[-1] = output[-1].colorize(:red)
                    terminal_code.insert(terminal_code.count-1,'\e[31m')
                elsif selection_3 == 3
                    output[-1] = output[-1].colorize(:green)
                    terminal_code.insert(terminal_code.count-1,'\e[32m')
                elsif selection_3 == 4
                    output[-1] = output[-1].colorize(:yellow)
                    terminal_code.insert(terminal_code.count-1,'\e[33m')
                elsif selection_3 == 5
                    output[-1] = output[-1].colorize(:blue)
                    terminal_code.insert(terminal_code.count-1,'\e[34m')
                elsif selection_3 == 6
                    output[-1] = output[-1].colorize(:magenta)
                    terminal_code.insert(terminal_code.count-1,'\e[35m')
                elsif selection_3 == 7
                    output[-1] = output[-1].colorize(:cyan)
                    terminal_code.insert(terminal_code.count-1,'\e[36m')
                else
                    puts "Invalid selection. Please reselect!"
                    output.pop
                    sleep 1
                end
            else
                puts "Invalid selection. Please reselect!"
            end
            system ("clear")

        elsif selection_1 == 3 # Insert emoji
            puts 'Please select the element you wants to add to your C-Promptz™. To exit, input "x".'
            emoji_menu.each_with_index do |e, index|
                print "  "
                print "(#{index+1}) #{e}"
                puts " "
            end
            print "Your selection: "
            selection_2 = gets.chomp.to_i
            puts divider
            if selection_2 <= emojis.count && selection_2 > 0
                puts "Which emoji are you after?"
                emojis.each_with_index do |e, index|
                    if selection_2 == (index + 1)
                        e.each_with_index do |ee, index_1|
                            print "  "
                            print "(#{index_1+1}) #{ee}"
                            puts " "
                        end
                    end
                end
                print "Your selection: "
                selection_3 = gets.chomp.to_i
                output.push(emojis[selection_2-1][selection_3-1])
                terminal_code.push(emojis[selection_2-1][selection_3-1])
            elsif selection_2 == "x"
                puts ">" * 20
            else
                puts "Invalid selection. Please reselect!"
                sleep 1
            end
            system ("clear")

        elsif selection_1 == 4 # Insert self-defined characters
            puts 'Please input the characters you wants to add to your C-Promptz™. To exit, put "x".'
            print "Your input: "
            selection_2 = gets.chomp
            if selection_2 != "x" # Exit menu if user put in "x"
                output.push(selection_2)
                terminal_code.push(selection_2)
            end
            system ("clear")
        
        elsif selection_1 == 5 # Function to remove current design - the only way to edit current design is to remove it and add what you want
            puts "Which element do you want to remove?"
            output.each_with_index do |o, index|
                puts "(#{index+1}) #{o}"
            end
            puts "(x) Exit"
            print "Your selection: "
            selection_2 = gets.chomp.to_i
            if selection_2 <= output.count && selection_2 > 0
                diff = terminal_code.count-output.count
                if remove_elements.count(terminal_code[selection_2-1+diff]) > 0
                    terminal_code.delete_at(selection_2-1+diff)
                    terminal_code.delete_at(selection_2-2+diff)
                else
                    terminal_code.delete_at(selection_2-1+diff)
                end
                output.delete_at(selection_2-1)
            elsif selection_2 == "x"
                puts ">" * 20
            else
                puts "Invalid selection. Please reselect!"
            end
            system ("clear")

        elsif selection_1 == 6 # Exit "Build-Your-Own" function
            if terminal_code.count > 0
                terminal_code.push('\[\e[m\]') # Syntax text color white in default
                `echo 'PS1="#{terminal_code.join}"' >>~/.bash_profile` # Designed terminal codes added into .bash_profile 
                #system("source ~/.bash_profile")
            puts " "
            0.upto(2) do
                STDOUT.print "\rC-Promptz™ is baking...!"
                sleep 0.4
                STDOUT.print "\r                         " # Send return and six spaces
                sleep 0.4
            end
            puts "\rPlease refresh your terminal to use your updated C-Promptz™!"
            puts " "
            sleep 1
            system("clear")
            table = Terminal::Table.new do |t|
                t.add_row [" "]
                t.add_row ["🔥  Certificate of Completion 🔥".bold]
                t.add_row [" "]
                t.add_separator
                t.add_row [" "]
                t.add_row [" "]
                t.add_row ["Congaratulations! You have completed a super cool C-Promptz™!"]
                t.add_row [" "]
                t.add_row ["C-Promptz™: [#{output.join}]"]
                t.add_row [" "]
                t.add_row ["You are now officially coolzz!"]
                t.add_row [" "]
                t.style = {:width => 130, :alignment => :center}
            end

            puts " "
            puts table
            puts """To use your brand new C-Promptz™, simply do one of the below:
                (1) Copy and paste 'source ~/.bash_profile' in your terminal
                (2) Close and re-open your terminal""" 
            sleep 2
        end
        puts " "
        puts "Thanks for using C-Promptz™ - your most trusted Prompt Builder!"
        puts " "
        else
            system("clear")
            puts "Invalid selection. Please reselect!"
            puts " "
        end
    end
end
