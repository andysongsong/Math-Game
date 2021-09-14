require './question'
require './player'
class Game
  def initialize
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
  end

  def begin
    puts "Welcome to Math Game!"
    round

  end

  def status
    puts "P1: #{@player_1.show_live} vs P2: #{@player_2.show_live}"
  end


  def check_result
    if @player_1.lives == 0
      puts "#{@player_2.name} wins with the score of #{@player_2.show_live}"
      puts '----- GAME-OVER -----'
      puts 'Good bye!'
      exit(0)
    elsif @player_2.lives == 0
      puts "#{@player_1.name} wins with the score of #{@player_1.show_live}"
      puts '----- GAME-OVER -----'
      puts 'Good bye!'
      exit(0)
    end
  end
  

  def round
    @player_1.question
    check_result
    @player_2.question
    check_result
    status
    puts "----- NEW TURN -----"
    round
  end
  
end