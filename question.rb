class Question
  def ask
    num = gets.chomp
  end

  def genNum
    rand(1..10)
  end


end

puts "Enter number"
p = Question.new
puts "> #{p.ask}"