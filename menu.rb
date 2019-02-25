require_relative 'game_menu'
require_relative 'wallet'
require_relative 'player'
# require_relative 'main'

class Menu
  
  def print_menu(wallet_amount)
    @wallet_amount = wallet_amount
    puts '==== CASINO ===='
    puts '1) Select a game to play'
    puts '2) Check wallet amount'
    puts '3) Exit'
    get_user_input
    menu_options(@choice)
  end

  def get_user_input
    @choice = gets.to_i
  end

  def menu_options(choice)
    case @choice
    when 1
     @game_menu = GameMenu.new
     @game_menu.print_menu(@wallet_amount)
    when 2
      puts
      puts "You have $#{@wallet_amount.to_s.colorize(:green)} in your wallet"
      puts
      print_menu(@wallet_amount)
    when 3
      puts "Goodbye!"
      exit
    else
      'Invalid choice try again'
    end
  end

end


