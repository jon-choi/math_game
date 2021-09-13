class Question 

  def initialize
    @min = rand(1...20)
    @max = rand(1...20)
    @answer = @min + @max
  end

  def new_question
    puts "What is #{@min} + #{@max}?"
  end

  def validate(input)
  input == @answer
  end
end

q = Question.new
puts q.new_question