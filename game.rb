require './player'
require './question'

class Game

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player1
  end

  def start
    round
    gameover
  end

  private

  def next_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def new_turn
    @question = Question.new
    @question.new_question(@current_player.name)
  end

  def round 
    while @player1.is_alive && @player2.is_alive
      puts "----- NEXT QUESTION -----"
      new_turn
    input = gets.chomp.to_i
    if @question.validate(input)
      puts "#{@current_player.name}: That is the correct answer!"
    else 
      puts "#{@current_player.name}: That is NOT the correct answer!"
      @current_player.lose_life
    end
    puts "P1L #{@player1.updated_lives} vs P2: #{@player2.updated_lives}"
    next_player
  end
end

def gameover
  puts "#{@current_player.name} wins with a score of #{@current_player.updated_lives}!"
  puts "\n----- GAME OVER -----"
  puts "\nSee you next time!"
end
end
