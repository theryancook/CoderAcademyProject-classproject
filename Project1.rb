require "tty-prompt"    #gem 1 - simple way to ask yes/no question
require "tty-box"   #gem 2 - adds boxes around text for readability
require "colorize"  #gem 3 - adds colour to text for readability

player_names = []   #array we're going to populate with players names
response = ""   #variable used as the condition to exit loop requesting players names
prompt = TTY::Prompt.new    #variable associated with gem 1

print TTY::Box.frame "Welcome to * SPOOF! *\nSomeone's luck is about to run out T.T\nEveryone else, enjoy!"
    
while response != "\"No\""  #have to use the weird syntax here, because when I printed response that's how it was coming out from the gem
    print TTY::Box.frame "If you're prepared to take the risk,\nplease enter your name:"
    name = gets.chomp()    #getting user input info
    player_names.push(name)    #pushing players names into an array so we know 1) how many players 2) whose turn it is
    response = prompt.select("Are there any more players?", %w("Yes" "No"))    #gem to exit the loop. Nice little selector for users
end

def spoof(player_names)
    
    exit_loop = 0   #bunch of variables here for this method
    guess = 100
    i = 0
    initial_guess = []  #array where we can store peoples gusses

    print TTY::Box.frame "The potential losers for those game are:", player_names   #confirming for players who's in the game

    for name in player_names    #lets us run through the whole array without knowing how many players there are
        print TTY::Box.frame "#{name}, now please choose a number between 0-3 (inclusive)"
        guess = gets.chomp.to_i
            while guess < 0 || guess > 3    #ensures that players can ONLY select valid integers, and requires them to select again if they don't
                print TTY::Box.frame "#{name}, it seems like you have some difficulty following instructions.\nThat number doesn't appear to be between 0 and 3.\nPlease choose a number between ZERO (0) and THREE (3) - inclusive.\nPlease guess again.".colorize(:red)
                guess = gets.chomp.to_i
            end
        initial_guess.push(guess)   #placed outside the while loop, so that the guess only gets pushed into the array if it's a valid integter
    end

total_correct_answer = initial_guess.inject(:+)    #found a method online that adds up all integers in the array. This creates our final guess number

    while i < player_names.length   #this lets everyone only have 1 turn before having to put an initial number again
        print TTY::Box.frame "#{player_names[i]}, here's where things start to get interesting.\nReady to win?"
        player_names.empty? == false
        print TTY::Box.frame "Please place your guess for the TOTAL amount"
            final_guess = gets.chomp.to_i
            if final_guess == total_correct_answer  #if the guess is equal to the sum of the previous input integers, they win
                player_names.delete(player_names[i])    #removes player from array if they've won
                print TTY::Box.frame "Winner winner chicken dinner!!\nNow that you've won, you may leave the game!".colorize(:green)
                return  #exits the if loop, returns remaining players in the while loop
            elsif player_names.length >= 2 && i == player_names.length - 1
                print TTY::Box.frame "NOPE!".colorize(:red)
                exit_loop = exit_loop + 1   #need to know when to exit the loop after every player has had a guess
            else
                print TTY::Box.frame "NOPE!".colorize(:red)
                exit_loop = exit_loop + 1   #need to know when to exit the loop after every player has had a guess
                i = i + 1
            end   
        if exit_loop == player_names.length #lets us know if everyone has had 1 guess
        print TTY::Box.frame "Since no one was able to get the correct answer,\nlet's try again!"
        break
        end
    end 
end

    def runner(player_names)    #method that will run the previous method until there's only 1 left & they are the loser
    while player_names.length > 1
    spoof(player_names)
    end
end

runner(player_names)
