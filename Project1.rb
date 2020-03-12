require "tty-prompt"    #gem number 1 - simple way to ask yes/no question
require "tty-box"
require "colorize"

player_names = []
response = ""
prompt = TTY::Prompt.new

print TTY::Box.frame "Welcome to * SPOOF! *\nSomeone's luck is about to run out T.T\nEveryone else, enjoy!"
    
while response != "\"No\"" #have to use the weird syntax here, because when I printed response that's how it was coming out from the gem
    print TTY::Box.frame "If you're prepared to take the risk,\nplease enter your name:"
    name = gets.chomp()
    player_names.push(name) # we're going to prompt for players names later on, so we're pushing them into an array for later on
    response = prompt.select("Are there any more players?", %w("Yes" "No")) #purpose of this is to know when to exit the loop
end

def spoof(player_names)
    
    exit_loop = 0
    guess = 100
    i = 0
    initial_guess = []

    print TTY::Box.frame "The potential losers for those game are:", player_names

    for name in player_names
        print TTY::Box.frame "#{name}, now please choose a number between 0-3 (inclusive)"
        guess = gets.chomp.to_i
            while guess < 0 || guess > 3
                print TTY::Box.frame "#{name}, it seems like you have some difficulty following instructions.\nThat number doesn't appear to be between 0 and 3.\nPlease choose a number between ZERO (0) and THREE (3) - inclusive.\nPlease guess again.".colorize(:red)
                guess = gets.chomp.to_i
            end
        initial_guess.push(guess)
    end

total_correct_answer = initial_guess.inject(:+)

    while i < player_names.length
        print TTY::Box.frame "#{player_names[i]}, here's where things start to get interesting.\nReady to win?"
        player_names.empty? == false
        print TTY::Box.frame "Please place your guess for the TOTAL amount"
            final_guess = gets.chomp.to_i
            if final_guess == total_correct_answer
                player_names.delete(player_names[i])
                print TTY::Box.frame "Winner winner chicken dinner!!\nNow that you've won, you may leave the game!".colorize(:green)
                return
            elsif player_names.length >= 2 && i == player_names.length - 1
                print TTY::Box.frame "NOPE!".colorize(:red)
                exit_loop = exit_loop + 1
            else
                print TTY::Box.frame "NOPE!".colorize(:red)
                exit_loop = exit_loop + 1
                i = i + 1
            end   
        if exit_loop == player_names.length
        print TTY::Box.frame "Since no one was able to get the correct answer,\nlet's try again!"
        break
        end
    end 
end

def runner(player_names)
    while player_names.length > 1
    spoof(player_names)
    end
end

runner(player_names)
