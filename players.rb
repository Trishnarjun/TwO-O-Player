class Players
  attr_accessor :p1, :p2

  def initialize
    @p1 = 0
    @p2 = 0
  end

  def player1Win
    @p1 += 1
  end

  def player2Win
    @p2 += 1
  end

  def printEnd
    if @p1 < @p2
      puts "Player #{2} wins with a score of #{@p2 - @p1}/3"
    elsif @p1 > @p2
      puts "Player #{1} wins with a score of #{@p1 - @p2}/3"
    end
    puts "-------- GAME OVER --------"
  end
end

