class Player

    def initialize 
        @playerOneName = 'Player 1'
        @playerTwoName = 'Player 2'
        @PlayerOneScore = 3
        @PlayerTwoScore = 3
    end

    # def setActivePlayer(player)
    #     @activePlayer = player
    # end
    # def activePlayer()
    #      @activePlayer
    # end

    def getP1 
        @PlayerOneScore
    end
    def getP2 
        @PlayerTwoScore
    end

    def minusP1Score
        @PlayerOneScore -= 1
    end
    def minusP2Score
        @PlayerTwoScore -= 1
    end


end


player = Player.new

# puts player.getP1