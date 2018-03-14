require 'colorize'
require 'terminal-table'
require_relative 'make_your_own'

def typed_out_string(string, print_speed)
    string.each_char do |character| 
        sleep(print_speed) 
        print character
    end
end

resolution = 100
padding_left = 30
divider = "*" * resolution
line_1 = "C-Promptz™"
line_2 = "WELCOME TO THE ULTIMATE STEP BY STEP PROMPT BUILDER"
line_3 = "# HAVE YOUR PROMPT STAND OUT & CREATE AUTHORITY #"
line_4 = "(A) New User"
line_5 = "(B) Existing User"
line_6 = "(C) Have no idea how you got here (Exit)"
line_7 = "DON'T HAVE A LAME PROMPT LIKE:"
line_8 = "Lame Larry : -bash |"
line_9 = "DON'T HAVE A RIDICULOUS ROOKIE PROMPT LIKE:"
line_10 = "Ridiculous Rookie Rick :"
line_11 = "_[@@@] ridiculousRookieRick-MacBook-AirRick-MacBook-Air"
line_12 = ".local-bash3.23.2.57~/apps/ruby/terminal_appterminal_app09:41:43 [@@@]_ |"
line_13 = "INSTEAD!"
line_14 = "BE DIFFERENT & CREATIVE LIKE:"
line_15 = "Creative Craig : ~ 👑 Craig → ❤️ 🏝 🌊 🏄🏽‍  → ruby/ ~"
line_16 = "HAVE A CLEAN TERMINAL & MAKE IT LOOK LIKE YOU KNOW WHAT YOU'RE DOING LIKE:"
line_17 = ".... Ruegen : 🤖  ~"
line_18 = "SO IF YOU WANT TO"
line_19 = "😑  Be lame & boring"
line_20 = "😑  Have a messy terminal"
line_21 = "😑  And look like a rookie who doesn't know what they're doing"
line_22 = "❌  Type 'N' and carry on with your programming"
line_23 = "BUT IF YOU WANT TO"
line_24 = "😎  Be different & creative"
line_25 = "😎  Have a clean terminal to create crisp code"
line_26 = "😎  And look like a pro while you're doing it"
line_27 = "✅  Type 'Y' & let's create your custom prompt"

greeting_part_1 = """
#{divider}
#{"*"+" "*(resolution-2)+"*"}
#{"*"+" "*((100-line_1.size)/2-1)+line_1+" "*((100-line_1.size)/2-1)+"*"}
#{"*"+" "*((100-line_2.size)/2-1)+line_2+" "*((100-line_2.size)/2)+"*"}
#{"*"+" "*((100-line_3.size)/2-1)+line_3+" "*((100-line_3.size)/2)+"*"}
#{"*"+" "*(resolution-2)+"*"}
#{divider}
"""

user_menu = """
#{divider}
#{"*"+" "*(resolution-2)+"*"}
#{"*"+" "*(padding_left)+line_4+" "*(100-padding_left-line_4.size-2)+"*"}
#{"*"+" "*(resolution-2)+"*"}
#{"*"+" "*(padding_left)+line_5+" "*(100-padding_left-line_5.size-2)+"*"}
#{"*"+" "*(resolution-2)+"*"}
#{"*"+" "*(padding_left)+line_6+" "*(100-padding_left-line_6.size-2)+"*"}
#{"*"+" "*(resolution-2)+"*"}
#{divider}
"""

dont_be_like_1 = """
#{" "*(resolution)}
#{" "*((100-line_7.size)/2)+line_7+" "*((100-line_7.size)/2)}
#{" "*(resolution)}
#{" "*((100-line_8.size)/2)+line_8+" "*((100-line_8.size)/2)}
#{" "*(resolution)}
"""

dont_be_like_2 = """
#{" "*(resolution)}
#{" "*((100-line_9.size)/2)+line_9+" "*((100-line_9.size)/2)}
#{" "*(resolution)}
#{" "*((100-line_10.size)/2)+line_10+" "*((100-line_10.size)/2)}
#{" "*(resolution)}
#{" "*((100-line_11.size)/2)+line_11+" "*((100-line_11.size)/2)}
#{" "*((100-line_12.size)/2)+line_12+" "*((100-line_12.size)/2)}
"""

be_like_1 = """
#{" "*(resolution)}
#{" "*((100-line_13.size)/2)+line_13+" "*((100-line_13.size)/2)}
#{" "*(resolution)}
#{" "*((100-line_14.size)/2)+line_14+" "*((100-line_14.size)/2)}
#{" "*(resolution)}
#{" "*((100-line_15.size)/2)+line_15+" "*((100-line_15.size)/2)}
#{" "*(resolution)}
"""

be_like_2 = """
#{" "*(resolution)}
#{" "*((100-line_16.size)/2)+line_16+" "*((100-line_16.size)/2)}
#{" "*(resolution)}
#{" "*((100-line_17.size)/2)+line_17+" "*((100-line_17.size)/2)}
#{" "*(resolution)}
"""

invite_1 = """
#{" "*(resolution)}
#{" "*(padding_left)+line_18+" "*(100-padding_left-line_18.size)}
#{" "*(resolution)}
#{" "*(padding_left)+line_19+" "*(100-padding_left-line_19.size)}
#{" "*(padding_left)+line_20+" "*(100-padding_left-line_20.size)}
#{" "*(padding_left)+line_21+" "*(100-padding_left-line_21.size)}
#{" "*(resolution)}
#{" "*(padding_left)+line_22+" "*(100-padding_left-line_22.size)}
#{" "*(resolution)}
"""

invite_2 = """
#{" "*(padding_left)+line_23+" "*(100-padding_left-line_23.size)}
#{" "*(resolution)}
#{" "*(padding_left)+line_24+" "*(100-padding_left-line_24.size)}
#{" "*(padding_left)+line_25+" "*(100-padding_left-line_25.size)}
#{" "*(padding_left)+line_26+" "*(100-padding_left-line_26.size)}
#{" "*(resolution)}
#{" "*(padding_left)+line_27+" "*(100-padding_left-line_27.size)}
#{" "*(resolution)}
"""

typed_out_string(greeting_part_1, 0.0015)
sleep 1
typed_out_string(user_menu, 0.0015)
sleep 1
print "Selection: "
response_1 = gets.chomp.downcase
system ("clear")

if response_1 == "a"
    typed_out_string(dont_be_like_1, 0.005)
    sleep 1
    typed_out_string(dont_be_like_2, 0.005)
    sleep 1
    system ("clear")
    typed_out_string(be_like_1, 0.005)
    sleep 1
    typed_out_string(be_like_2, 0.005)
    sleep 1
    system ("clear")
    typed_out_string(invite_1, 0.005)
    sleep 1
    typed_out_string(invite_2, 0.005)
    
    puts "What will it be, Y or N?"
    answer = gets.chomp.downcase 
        
    until answer == "y" || answer == "n"
    puts "Please enter another answer from the opions above"
    sleep(1)
    answer = gets.chomp.downcase 
    end
        
    if answer == "y"
        puts "Epic, let's make it happen!"
        sleep(1.2)
        make_your_own 
    else 
        puts "All good, come back when you're ready to be a pro. See you then."
    #Exits C-Promptz™️ 
    end
    
elsif response_1 == "b"
    make_your_own
elsif response_1 == "c"
    puts "All good, come back when you're ready to be a pro. See you then."
end