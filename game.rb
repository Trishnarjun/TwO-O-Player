require "./question"
require "./players"

class Game
  attr_accessor

  def initialize
    @player1 = 0
    @player2 = 0
    @currentPlayer = 1
  end

  def startGame
    players = Players.new
    counter = 1
    while players.p1 <= 3 && players.p2 <= 3
      question = Question.new
      puts players.p1
      puts players.p2
      if counter % 2 === 0
        question.printQuestion("2")
        if question.checkAns(gets.chomp.to_i)
          players.player2Win
          # puts "Player 2: Yes! You are correct"
        else 
        end
      else
        question.printQuestion("1")
        if question.checkAns(gets.chomp.to_i)
          puts players.player1Win
        end
      end
      puts "-------- NEW TURN --------" 
      counter += 1
    end
    puts players.p1
    puts players.p2
    players.printEnd
  end
end