require_relative 'wallet'
require_relative 'game_menu'

class Slots
  
  def start_game(wallet_amount)
    @wallet_amount = wallet_amount
    puts "Enter your bet:"
    @bet = gets.to_f
    # @wallet = kate.wallet_amount
    p @wallet_amount
    spin
  end

  def spin
     @spin_result = rand(1..5)

    if @spin_result == 3
      puts
      puts "YOU WIN!"
      puts
      win_bet(@bet)
      continue_game
    else
      puts
      puts "You LOSE" 
      puts
      lose_bet(@bet)
      continue_game
    end 
    
  end

  def lose_bet(bet)
    puts "Your bet was: $#{@bet.to_f}"
    @new_balance = @wallet_amount - @bet.to_f
    puts "Your updated balance is: $#{@new_balance.to_s.colorize(:red)}"
  end

  def win_bet(bet)
    puts "Your bet was: #{@bet.to_f}"
    @new_balance = (@bet.to_f * 2) + @wallet_amount
    puts "Your updated balance is: $#{@new_balance.to_s.colorize(:green)}"
  end

  def continue_game
    puts
    puts "Would you like to play again? [y]es [n]o"
    @response =  gets.to_s.chomp
    # p @response

    if @response == 'y'
      start_game(@new_balance)
    elsif @response == 'n'
      @game_menu = GameMenu.new
      @game_menu.print_menu(@new_balance)
      choice = @game_menu.get_user_input
      @game_menu.menu_options(choice)
    else
      puts "Invalid input, please try again."
    end

  end

end

