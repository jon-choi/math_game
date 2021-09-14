class Question 

  attr_reader :answer, :question

  def initialize
    @min = rand(1...20)
    @max = rand(1...20)
    @answer = @min + @max
  end

  def new_question(current_player)
    puts "#{@current_player}: what is #{@min} + #{@max}?"
  end

  def validate(input)
  input == @answer
  end
end

