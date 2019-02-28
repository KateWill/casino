require_relative 'wallet'
require_relative 'card'
require_relative 'deck'
require 'colorize'

class HighLow
  attr_accessor :cards

  def initialize 
    # Instantiate a new deck
    @deck = Deck.new
  end

  def start_game(wallet_amount)
    @wallet_amount = wallet_amount
    puts "Enter your bet:"
    @bet = gets.to_f
    draw_card
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
    @continue_response =  gets.to_s.chomp
    # p @continue_response

    if @continue_response == 'y'
      start_game(@new_balance)
    elsif @continue_response == 'n'
      @game_menu = GameMenu.new
      @game_menu.print_menu(@new_balance)
      choice = @game_menu.get_user_input
      @game_menu.menu_options(choice)
    else
      puts "Invalid input, please try again."
    end
  end

  def draw_card

    # Instantiate a new deck
    # c = Card.new
    # puts c
    
    #  @first_card_results = rand(1..13)
    #  @second_card_results = rand(1..13)
     @first_card_results = @deck.rand_card
     @second_card_results = @deck.rand_card
    #  puts String.colors   
     puts     
     puts "First card is: #{@first_card_results.to_s.colorize(:green)}"
     puts 
     puts "Is the next [h]igher or [l]ower?"
     @response = gets.chomp
    #  p @response
    if @first_card_results < @second_card_results && @response == 'l'
      puts
      puts "Second card is #{@second_card_results.to_s.colorize(:red)}"
      puts
      puts "You LOSE!"
      puts
      lose_bet(@bet)
      continue_game
    elsif @first_card_results < @second_card_results && @response == 'h'
      puts
      puts "Second card is #{@second_card_results.to_s.colorize(:green)}"
      puts
      puts "You WIN!" 
      puts
      win_bet(@bet)
      continue_game
    elsif @first_card_results > @second_card_results && @response == 'h'
      puts
      puts "Second card is #{@second_card_results.to_s.colorize(:red)}"
      puts
      puts "You LOSE!"
      puts
      lose_bet(@bet)
      continue_game
    else @first_card_results > @second_card_results && @response == 'l'
      puts
      puts "Second card is #{@second_card_results.to_s.colorize(:green)}"
      puts
      puts "You WIN!"
      puts
      win_bet(@bet)
      continue_game
    end 
  end

end

