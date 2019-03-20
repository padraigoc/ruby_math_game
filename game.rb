
require './question'
require './player'

class Game

    def initialize
      createNewPlayers
    end

    def start
      while @p1.lives > 0 && @p2.lives > 0
      #ask question
      puts "----------- NEW ROUND -----------"
      for item in @playerArray
          puts "Player #{item.name}'s turn:"
          newQuestion(item)
          puts "Player #{@p1.name} : #{@p1.lives}/3 LIVES \nPlayer #{@p2.name} : #{@p2.lives}/3 LIVES"
          puts "\n"
      end
    end
     whoWins
    end

    def whoWins 
      if @p1.lives > 0
        puts "*-*-*-*-*-*-*-*"
        puts "Player 1 wins!"
        puts "*-*-*-*-*-*-*-*"
      else
        puts "*-*-*-*-*-*-*-*"
        puts "Player 2 wins!"
        puts "*-*-*-*-*-*-*-*"
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
          puts "That is incorrect! :("         
          player.lives -= 1

         else 
          puts "Congrats, That is correct! :) "
         end
      end

      #create two players
      def createNewPlayers
        @p1 = Player.new '1'
        @p2 = Player.new '2'
        @playerArray = [@p1,@p2]
        puts "----------- NEW GAME -----------"
        puts "Welcome to the game player #{@p1.name} and player #{@p2.name}"
        puts "Player #{@p1.name} has #{@p1.lives} lives and player #{@p2.name} has #{@p2.lives} lives. Player #{@p1.name} will go first! "
      end
  end

  g = Game.new
  puts g.start