require_relative 'wallet'

class Slots
  
  def start_game
    @wallet = Wallet.new(100.00)
    puts "Enter your bet:"
    @bet = gets.to_f
    spin
    display_result
  end

  def spin
     @spin_result = rand(1..5)

    if @spin_result == 3
      puts "YOU WIN!"
      @wallet.win_bet
    else
      puts "You LOSE" 
      @wallet.lose_bet
    end 
    

  end

  def display_result

  end

end