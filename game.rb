require './players'
require './questions'

class Game
  
  def start
    # Create player 1
    p1 = Player.new("Player 1")
    # Create player 2
    p2 = Player.new("Player 2")

    # cumulator
    cumulator = 1
    
    while (p1.lives && p2.lives) > 0 do
      @question = Question.new   
      
      if cumulator % 2 == 0
        puts "Player 2: #{@question.show_question}"
      else
        puts "Player 1: #{@question.show_question}"
      end
      answer = gets.chomp

      if @question.check_answer(answer) == false
        if cumulator % 2 == 0
          p2.deduct_life
          puts "Wrong answer Player 2!"
        else
          p1.deduct_life
          puts "Wrong answer Player 1!"
        end
      else
        puts "Correct! Switch Players."
      end

      puts "P1: #{p1.lives} / 3 vs P2: #{p2.lives} / 3"


      if (p1.lives > 0) && (p2.lives > 0)
        puts "--- NEW TURN ---"
      elsif cumulator % 2 == 0
        puts "Player 1 wins with a score of #{p1.lives} / 3"
        break
      else 
        puts "Player 2 wins with a score of #{p2.lives} / 3"
        break
      end

      cumulator = cumulator + 1
    end
  
    ##----------- end of while loop ----------------
    
    puts "--- GAME OVER ---"
  end
  
end