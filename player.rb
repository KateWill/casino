require_relative 'wallet'

class Player
  attr_accessor :name, :wallet_amount 

  def initialize(name, wallet_amount)
    @name = name
    @wallet_amount = wallet_amount.to_f
  end

  def greet
    puts
    puts "***************************************************"
    puts
    puts "Hello #{@name}! Welcome to the Ruby Class Casino!"
    puts "Let me offer you some options..."
    puts
    puts "***************************************************"
    puts
    @menu = Menu.new
    @menu.print_menu(@wallet_amount)
    # choice = @menu.get_user_input
    # @menu.menu_options(choice, @wallet_amount)

    # @game_menu = GameMenu.new
    # # @game_menu.print_menu
    # choice = @game_menu.get_user_input
    # @game_menu.menu_options(choice)
  end

  # def show_wallet_amount
  #   puts
  #   puts "You have: $#{@wallet_amount}"
  #   puts
  # end

end