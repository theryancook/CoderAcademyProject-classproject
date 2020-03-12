** “Provide a link to your source control repository”
https://github.com/theryancook/classproject

** “Develop a statement of purpose and scope for your application. It must include:
- describe at a high level what the application will do
- identify the problem it will solve and explain why you are developing it
- identify the target audience
- explain how a member of the target audience will use it”
The application is a programmatic version of a slightly skilled game of chance named SPOOF (also known as three coin). https://en.wikipedia.org/wiki/Spoof_(game) The application replicates exactly the rules of the game. Initially we ask players for their names, then once we’ve established who our players are, people then choose a number between 0 and 3 inclusive (in reality, they’d place this amount of coins secretly in their hand behind their back). Then once we’ve got everyone’s guess, we total the amount that people guessed to get the winning number (in real life this would be the total amount of coins). The aim of the game is to guess this number. Everyone gets one chance, and then we start again. We take turns to guess the total amount of coins, and if anyone has guessed correctly, they win and they’re out. We repeat as people win 1 by 1, until we’re left with 1 loser.

This game has existed for decades, however, has traditionally been played with coins or bottle caps, often in bars. Fast forward to the 21st century, and cash payments are on the decline. How are we supposed to play our fun little game when no one carries coins anymore? This simulates the game letting people play programmatically.

Originally, this game was often played in bars to dictate who buys the next round of drinks. Moving from the bar context now that it’s been developed programmatically, anyone who’s looking for a fun way to make a decision (generally something that people don’t want to do) in a fun way with friends, would be interested in using this application. Targeted more specifically at a younger generation who are more tech savvy (i’d imagine it available as an iOS or Android app).

I’d envision this taking the form of a mobile app. I’ll provide a scenario. Imagine, we’re 4 friends in a cab, and we don’t know how to decide who pays. Someone whips out their phone, opens the app. People take turns anonymously inputting a number 0-3 in the GUI, until we reach the point where we’re got a loser and we’ve decided who’s paying the cab.

** Develop a list of features that will be included in the application. It must include:
- at least THREE features
- describe each feature

Note: Ensure that your features above allow you to demonstrate your understanding of the following language elements and concepts:
- use of variables and the concept of variable scope
- loops and conditional control structures
- error handling

Consult with your educator to check your features are sufficient .
We’ve allowed for people to enter anything as their username - this is supposed to be a fun game, so entering silly names is definitely encouraged. The main purpose is just to identify whose turn it is. For ending the user input of names, i’ve used a ruby gem called “TTY Prompt”. Originally in the scope I planned to ask the user to enter Y or N, but this method of only presenting them choices that are navigable using the up and down arrows means that there’s no risk of the user entering something that’s not Y or N and creating an error,

It’s important that the user chooses a number between 0 & 3 inclusive, so I've implemented a while loop within the for loop.. The while loop won’t let the guess array take the integer unless it’s in that range. The user will get a message letting them know that their guess didn’t fit into the rules, what the rules are, and to please guess again. The game will not continue until we have a correct guess.

Since my program is building upon user inputs, i’ve decided to store that information in several arrays. Arrays are good for storing data such as strings and integers. I pushed the initial user input in the player_name array, which I can then later use to let specific players know that it’s their turn. My 2nd array contains the users gusses, which I then applied a simple ruby method to get the total_correct_answer variable which is the right number that players have to guess to not lose the game.

** Develop an outline of the user interaction and experience for the application.
Your outline must include:
- how the user will find out how to interact with / use each feature
- how the user will interact with / use each feature
- how errors will be handled by the application and displayed to the user
I’ve provided some pretty clear instructions for how users can navigate this program. We’re playing a fun little game of SPOOF here, so there’s not tonnes of complicated actions requested in the form of user input.

Aim of the game is to successfully guess the total amount of ‘coins’ that everyone has placed in the middle. For this program, you’ll be guessing the total summation of the numbers input by the other players, with the range being 0 to (number of players * 3).

Initially, they will be prompted via on screen instructions to enter their name, and whether or not there’s other players which they can select by navigating through a menu. The select menu mitigates any errors of typing in the wrong value to proceed to the next part of the game.

Once we’ve got all the users names, they’ll be asked to provide a guess within a set range inclusive. Again, there’s on screen instructions. If they provide an integer outside that range, users will be prompted that their selection was not in the range and to make another selection. Errors are displayed in red. The game will not be able to continue until such a time they’ve entered a valid integer. If the user enters a letter or other value, they will get ‘0’ as their integer.

Users will again be prompted one final time, which is to guess the total number (which is the summation of all the numbers previously input). If they’re wrong, it’ll say “NOPE” in red and if they win they will be told “Winner winner chicken dinner” in green and will be told that they’ve won this round and have left the game (keeping in mind the last person loses).

** Develop a diagram which describes the control flow of your application. Your diagram must:
- show the workflow/logic and/or integration of the features in your application for each feature.
- utilise a recognised format or set of conventions for a control flow diagram, such as UML.

** Develop an implementation plan which:
- outlines how each feature will be implemented and a checklist of tasks for each feature
- prioritise the implementation of different features, or checklist items within a feature
- provide a deadline, duration or other time indicator for each feature or checklist/checklist-item

Utilise a suitable project management platform to track this implementation plan


> Your checklists for each feature should have at least 5 items.
public Trello board > https://trello.com/b/KHNcZfPh/project-1

Design help documentation which includes a set of instructions which accurately describe how to use and install the application.

You must include:
- steps to install the application
- any dependencies required by the application to operate
- any system/hardware requirements
This program uses some Ruby Gems which are going to be linked below with instructions on how to install.

Please ensure that if you’re not using the following link, you’re using a reputable site to download and install.

- TTY-Prompt - https://rubygems.org/gems/tty-prompt/versions/0.19.0
You can run the following code in your terminal application
gem install tty-prompt -v 0.19.0
- TTY-Box - https://rubygems.org/gems/tty-box/versions/0.5.0
You can run the following code in your terminal application
gem install tty-box
- Colorize - https://rubygems.org/gems/colorize/versions/0.8.1
gem install colorize

Next step it to run the ruby file on your local machine in your terminal but navigating to the correct directory with the file and then running “ruby “FILENAME.rb””














