require_relative 'game_menu'

class Menu

  def print_menu
    puts '==== CASINO ===='
    puts '1) Select a game to play'
    puts '2) Exit'
  end

  def get_user_input
    gets.to_i
  end

  def menu_options(choice)
    case choice
    when 1
     @game_menu = GameMenu.new
     @game_menu.print_menu
    when 2
      exit
    else
      'Invalid choice try again'
    end
  end

end


