class Score
    def initialize
        @player1_lives = 3
        @player2_lives = 3
    end
    def display_scores 
        puts "P1: #{@player1_lives}/3 vs P2: #{@player2_lives}/3"  
    end 

    def getP1Score
        @player1_lives = 3
    end
    def getP2Score
        @player1_lives = 3
    end

    def minusLives(namePlayer)
        namePlayer -= 1
    end

end


score = Score.new

# puts score.display_scores