class Question

    def initialize
      @number1 = rand(20)
      @number2 = rand(20)
    end
   
    def question_text
      "what is #{@number1} + #{@number2}?"
    end
   
    def correct_answer?(some_answer)
      @number1 + @number2 == some_answer.to_i
    end

end