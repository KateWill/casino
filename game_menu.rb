require_relative 'slots'
require_relative 'high_low'

class GameMenu

  def print_menu
    puts '==== Games ===='
    puts '1) Slots'
    puts '2) High/Low'
    puts '3) Exit'
  end

  def get_user_input
    gets.to_i
  end

  def menu_options(choice)
    case choice
    when 1
      @slot_game = Slots.new
      @slot_game.start_game
    when 2
      @high_low_game = HighLow.new
      @high_low_game.start_game
    when 3
      exit
    else
      'Invalid choice try again'
    end
  end

end