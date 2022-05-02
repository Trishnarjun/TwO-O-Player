class Question
  attr_accessor :num1, :num2

  def initialize
    @num1 = num1,
    @num2 = num2
  end 

  def ask
    num = gets.chomp
  end

  def num
    num1 = rand(1..10)
    num2 = rand(1..10)
    [num1, num2]
  end

  g = self.new
  puts "Player1: what does #{g.num[0]} plus #{g.num[1]} equal"
  puts "> #{g.ask}"

end
