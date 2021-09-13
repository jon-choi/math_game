2 players (p1, p2) each with 3 lives
these will be instances variables that will be updated as the game is played

each player takes a turn
player asks the other: 'what does {random number from 1-20} plus {random number from 1-20} equal?

gets.chomp will allow player to input an answer

if answer is correct, display associated message
if answer is incorrect, display associated message and remove a life from player

when a player reached 0 lives, the game is over.
announce the winner and display 'game over' and then 'goodbye'

Classes: Player, Turns, Game, Answer.

the game class will contain all relevant info about the state of the game, only changes to over at the end.

the player class will contain the number of lives (3) each player has. every submitted answer will switch to 
the other player.

