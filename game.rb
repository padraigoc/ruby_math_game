
require './question'
require './player'

class Game

    def initialize
      createNewPlayers
    end


    def start
      while @p1.lives > 0 # && @p2.lives > 0
  
      #ask question
      newQuestion(@p1)
      end
    end



      
      def newQuestion(player)

        #asks question
        question = Question.new
        puts question.question_text
        answer = gets.chomp
        right_answer = question.correct_answer? answer

         #validates
         if right_answer == false
          puts "That is incorrect!"
          player.lives -= 1
          puts "Number of lifes left: #{player.lives}"
         else 
          puts "That is correct!"
         end
      end

      #create two players
      def createNewPlayers
        @p1 = Player.new '1'
        @p2 = Player.new '2'
        puts "----------- NEW GAME -----------"
        puts "Welcome to the game player #{@p1.name} and player #{@p2.name}"
        puts "Player #{@p1.name} has #{@p1.lives} lives and player #{@p2.name} has #{@p2.lives} lives"
      end

  end

  g = Game.new
  puts g.start