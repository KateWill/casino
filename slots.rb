
module Slots
  
  def start_game
    puts "Enter your bet:"
    @bet = gets.to_i
    spin
  end

  def spin
    spin_result = rand(1..5)
    
  end

  def display_result

  end

end