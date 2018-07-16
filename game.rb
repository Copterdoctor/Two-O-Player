require 'simple-random'

def get_random_number
  sr = SimpleRandom.new
  sr.set_seed
  return sr.uniform(1, 20).to_i
end

class NewGame
  
  def initialize
    @num_1 = 0
    @num_2 = 0
  end

  def addition(player)
    @num_1 = get_random_number
    @num_2 = get_random_number
    puts "#{player.name}: What does #{@num_1} plus #{@num_2} equal?"
    answer = gets.chomp().to_i
    if answer != (@num_1 + @num_2)
      player.lives += -1
    end
  end

  def start_game(p1, p2)
    player1 = p1
    player2 = p2
    while p1.lives > 0 && p2.lives > 0
      addition(player1)
      p "P1 Lives = #{player1.lives}/3 P2 Lives = #{player2.lives}/3"
      break if player1.lives < 1
      addition(player2)
      p "P1 Lives = #{player1.lives}/3 P2 Lives = #{player2.lives}/3"
      break if player2.lives < 1
    end
    
    if player1.lives > player2.lives
      p "PLAYER ONE WINS"
    else
      p "PLAYER TWO WINS"
    end
  end
end