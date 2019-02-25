require_relative 'slots'
require_relative 'high_low'

class GameMenu

  def print_menu(wallet_amount)
    @wallet_amount = wallet_amount
    puts '==== Games ===='
    puts '1) Slots'
    puts '2) High/Low'
    puts '3) Exit'
    get_user_input
    menu_options(@game_choice)
  end

  def get_user_input
    @game_choice = gets.to_i
  end

  def menu_options(game_choice)
    case @game_choice
    when 1
      @slot_game = Slots.new
      @slot_game.start_game(@wallet_amount)
    when 2
      @high_low_game = HighLow.new
      @high_low_game.start_game(@wallet_amount)
    when 3
      puts "Goodbye!"
      exit
    else
      'Invalid choice try again'
    end
  end

end