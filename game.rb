require './question'
require './score'
require './player'
class MathGame 

    def initialize
        @question = Question.new
        @score = Score.new
        @player = Player.new
        @activePlayer = "Player 1"
    end


    def play
        # num1 = rand(1..20)
        # num2 = rand(1..20)
        # correct_answer = num1 + num2

        # puts "Player 1: What does #{num1} plus #{num2} equal?"
        # answer = gets.chomp.to_i

        # if answer == correct_answer
        #     puts "correct answer"
        # else 
        #     puts 'Wrong answer'
        #     @player1_lives -= 1
        #     puts @player1_lives
        # end
        
        while @player.getP1 > 0 &&  @player.getP2 >  0
            play_round
        end


        if @player.getP1 == 0 && @player.getP2 == 0
            puts "draw"
        elsif @player.getP1 == 0
                puts "Player 2 wins #{@player.getP2}/3"
        else
            puts "Player 1 wins by #{@player.getP1}/3"
        end
       
    
        puts "Game Over"
    end

    


    def play_round 
        @question = Question.new
        print "#{@activePlayer}: #{@question.display_question}"
        answer = gets.chomp.to_i
        if @question.isCorrect(answer)
            puts 'Correct!'
        else
            puts 'Wrong!'
            if @activePlayer == "Player 1"
                @player.minusP1Score
            else
                @player.minusP2Score
            end
        end
        @activePlayer = (@activePlayer == 'Player 1') ? 'Player 2' : 'Player 1'
        puts "P1 #{@player.getP1}/3 vs P2 #{@player.getP2}/3"
        puts "----- New Turn -----"
    end
    

   

end
