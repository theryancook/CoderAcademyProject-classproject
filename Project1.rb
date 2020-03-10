player_names = []
response = ""

    while response.downcase != "n"
        p "Hello there! Potential victim, enter your name:"
        name = gets.chomp()
        player_names.push(name)
        p "Are there any more players? Please answer 'Y' or 'N'"
        response = gets.chomp()
    end

p player_names

initial_guess = []
guess = 100

until player_names.length == 1 do
    for name in player_names
        p "Dearest friend #{name}, now please choose a number between 0-3 (inclusive)"
        guess = gets.chomp.to_i
            while guess < 0 || guess > 3
                p "That number doesn't appear to be between 0 and 3. Please choose a number between ZERO and THREE - inclusive"
                p "-----------------------------------------------------------------------------------------------------------"
                p "Please guess again"
                guess = gets.chomp.to_i
            end
        initial_guess.push(guess)
    end
    p initial_guess

total_correct_answer = initial_guess.inject(:+)
p total_correct_answer

    i = 0
    while i < player_names.length
        p "#{player_names[i]}, here's where things start to get interesting. Ready to win?"
        p "--------------------------------------------------------------------"
        player_names.empty? == false
        p "Please place your guess for the TOTAL amount"
            final_guess = gets.chomp.to_i
            if final_guess == total_correct_answer
            player_names.delete(player_names[i])
            p "WINNA"
            return
            else
            p "NOPE"
            i = i + 1
            end
        if player_names.length >= 2 && i == player_names.length
        i = 0
        else
        
        end
        
    end
end


    #now that someone's run, we want to run the guessing part of the program MINUS that person
    # from the array
    #wrap function call (player_names) until array == array.length == 1
