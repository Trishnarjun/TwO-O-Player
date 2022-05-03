class Question
  attr_accessor :num1, :num2

  def initialize
    @num1 = rand(1..10)
    @num2 = rand(1..10)
    @sum = @num1 + @num2
  end

  def checkAns(input)
    @sum === input.to_i
  end

  def printQuestion(player)
    puts "Player#{player}: what does #{@num1} plus #{@num2} equal"
  end

  
  

  
end

