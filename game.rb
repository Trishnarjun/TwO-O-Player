require "./question"
require "./players"

class Game
  def startGame
    players = Players.new
    counter = 1
    while players.p1 > 0 && players.p2 > 0
      question = Question.new
      if counter % 2 === 0
        question.printQuestion("2")
        if question.checkAns(gets.chomp.to_i)
          puts "Player 2: Yes! You are correct"
        else 
          players.player2Lose
          puts "Player 2: Seriously? No!"
        end
      else
        question.printQuestion("1")
        if question.checkAns(gets.chomp.to_i)
          puts "Player 1: Yes! You are correct"
        else
          puts players.player1Lose
          puts "Player 1: Seriously? No!"
        end
      end
      puts "P1: #{players.p1}/3 vs P2: #{players.p2}/3"
      puts "-------- NEW TURN --------" 
      counter += 1
    end
    players.printEnd
  end
end