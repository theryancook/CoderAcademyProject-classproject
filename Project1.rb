player_names = []
response = nil

    while response != "N"
        p "Hello there! Player enter your name:"
        name = gets.chomp()
        player_names.push(name)
        p "Are there any more players? Please answer 'Y' or 'N'"
        response = gets.chomp()
        if response == "Y".downcase
        elsif response == "N".downcase #need to also add in where if the answer doesn't = Y or N
        end
    end
p player_names


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