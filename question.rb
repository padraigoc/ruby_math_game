class Question

    def initialize
      @number1 = random_number
      @number2 = random_number
    end
   
    def question_text
      "what is #{@number1} + #{@number2}?"
    end
   
    def correct_answer?(some_answer)
      @number1 + @number2 == some_answer.to_i
    end

    def random_number
        return rand(20)
   end

end
   
# question = Question.new
# puts question.question_text
# # text_of_question = question.question_text
# right_answer = question.correct_answer? 10
# puts right_answer



# question = Question.new
# puts question.question_text
# answer = gets.chomp
# right_answer = question.correct_answer? answer
# puts right_answer