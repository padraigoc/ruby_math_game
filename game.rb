
require './question'
require './player'

class Game

    def initialize
    end

    def start

      #create new players
      createNewPlayers

      #point to player 1


      #point to player 2 
 

      #ask question
      newQuestion
      end

      def newQuestion
        question = Question.new
        puts question.question_text
        answer = gets.chomp
        right_answer = question.correct_answer? answer
        puts right_answer
      end

      def createNewPlayers
        p1 = Player.new '1'
        p2 = Player.new '2'
        puts "Welcome to the game player #{p1.name} and player #{p2.name}"
        puts "Player #{p1.name} has #{p1.lives} lives and player #{p2.name} has #{p2.lives} lives"
      end


  end

  g = Game.new
  puts g.start