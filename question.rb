class Question
    # attr_reader  :correct_answer
    # attr_reader :num1, :num2, 


    def initialize
        @num1 = rand(1..20)
        @num2 = rand(1..20)
        @correct_answer = @num1 + @num2
    end

    def display_question
        "what does #{@num1} plus #{@num2} equal? "
    end

    def isCorrect(answer)
        answer == @correct_answer
    end

end

# question = Question.new
# puts question.display_question