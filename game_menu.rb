class GameMenu
  def print_menu
    puts '==== Games ===='
    puts '1) Slots'
    puts '2) High/Low'
    puts '3) Exit'
  end

  def menu_options(choice)
    case choice
    when 1
      puts 'selecting a game to play'
    when 2
      exit
    else
      'Invalid choice try again'
    end
  end

end