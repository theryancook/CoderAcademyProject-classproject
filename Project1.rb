player_names = []
response = ""
require "tty-prompt" #gem number 1 - simple way to ask yes/no question
require "tty-box"
prompt = TTY::Prompt.new

print TTY::Box.frame "Welcome to SPOOF! Someone's luck is about to run out T.T Everyone else, enjoy!"
    while response != "\"No\"" #have to use the weird syntax here, because when I printed response that's how it was coming out from the gem
        print TTY::Box.frame "Yo! Potential loser! Enter your name:"
        name = gets.chomp()
        player_names.push(name) # we're going to prompt for players names later on, so we're pushing them into an array for later on
        response = prompt.select("Are there any more players?", %w("Yes" "No")) #purpose of this is to know when to exit the loop
    end

print TTY::Box.frame "So, the potential losers for those game are:"
p player_names

def spoof(player_names)
    guess = 100
    initial_guess = []
    for name in player_names
        print TTY::Box.frame "Dearest friend #{name}, now please choose a number between 0-3 (inclusive)"
        guess = gets.chomp.to_i
            while guess < 0 || guess > 3
                print TTY::Box.frame "That number doesn't appear to be between 0 and 3. Please choose a number between ZERO and THREE - inclusive", "Please guess again"
                guess = gets.chomp.to_i
            end
        initial_guess.push(guess)
    end
    
p initial_guess

total_correct_answer = initial_guess.inject(:+)
p total_correct_answer

i = 0
# in reality, the person who went 2nd the first time would then go first, and the person who went first could go last etc
# need to get it so that after we've been through once, we ask for input again
    while i < player_names.length
        print TTY::Box.frame "#{player_names[i]}, here's where things start to get interesting. Ready to win?"
        player_names.empty? == false
        print TTY::Box.frame "Please place your guess for the TOTAL amount"
            final_guess = gets.chomp.to_i
            if final_guess == total_correct_answer
                player_names.delete(player_names[i])
                print TTY::Box.frame "Winner winner chicken dinner!!", "Now that you've won, you may leave the game!"
                return
            elsif player_names.length >= 2 && i == player_names.length - 1
                i = 0
            else
                print TTY::Box.frame "NOPE"
                i = i + 1
            end 
    end 
end

def runner(player_names)
while player_names.length > 1
    spoof(player_names)
end
end

### ideally, if everyone gets the answer wrong, it would just loop again straight away

runner(player_names)
    #now that someone's run, we want to run the guessing part of the program MINUS that person
    # from the array
    #wrap function call (player_names) until array == array.length == 1

    #force select gems
