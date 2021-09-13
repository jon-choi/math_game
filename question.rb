class Question 

  attr_reader :answer

  def initialize
    @player = player
    @min = rand(1...20)
    @max = rand(1...20)
    @answer = @min + @max
  end

  def new_question
    puts "#{@player}, What is #{@min} + #{@max}?"
  end

  def validate(input)
  input == @answer
  end
end

q = Question.new
puts q.new_question