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

total_correct_answer = initial_guess.inject(:+) #random method to add integers in array
p total_correct_answer #confirmed that I gots me a new variable for the next bit









# guess = nil
# correct_answer = 10

# while guess != correct_answer
#     print "Enter a guess: "
#     guess = gets.chomp.to_i
#     if guess < correct_answer
#         puts "Guess Higher"
#     elsif guess > correct_answer
#         puts "Guess Lower"
#     end
# end   
# puts "You guess correctly!" 







# array = [ ]
# input = gets.chomp
# while
#   input != ''
#   array.push input
#   input = gets.chomp  
# end
# puts array

# something = []
# puts “Say something…”
# loop do
# nextline = gets.chomp
# something << nextline
# break if nextline == “”
# end
# puts something



# # # while guess != correct_answer
# # #     print "enter a guess: "
# # #     guess = gets.chomp.to_i
# # #     if guess == correct_answer
# # #         puts "You guessed correctly"
# # #     elsif guess < correct_answer
# # #         puts "Guess higher"
# # #     else
# # #         puts "Guess lower"
# # #     end
# # # end


# # # # print "What's your name?"
# # # # name = gets.chomp

# # # # while name != "exit"            #the user doesn't enter exit
# # # #     puts  "Hello #{}"
# # # #     puts  "What's your name?"
# # # #     name = gets.chomp

# # # # end