require './question'

class Player
  attr_reader :name
  attr_reader :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1    
  end

  def show_live
    "#{@lives}/3"
  end

  def question
    question = Question.new
    print "#{@name}: "
    question.generate_question
    print '> '
    input = gets.chomp
    if question.result?(input)
      puts 'Yes! You are correct.'
    else
      puts 'Sorry? Wrong!'
      lose_life
    end
  end
end