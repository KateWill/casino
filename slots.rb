require_relative 'wallet'
require_relative 'game_menu'

class Slots
  
  def start_game
    @wallet = Wallet.new(100.00)
    puts "Enter your bet:"
    @bet = gets.to_f
    spin
  end

  def spin
     @spin_result = rand(1..5)

    if @spin_result == 3
      puts "YOU WIN!"
      @wallet.win_bet
      continue_game
    else
      puts "You LOSE" 
      @wallet.lose_bet
      continue_game
    end 
    

  end

  def continue_game
    puts "Would you like to play again? [y]es [n]o"
    @response =  gets.to_s

    if @response == 'y'
      spin
    else
      @game_menu = GameMenu.new
      @game_menu.print_menu
    end

  end

end