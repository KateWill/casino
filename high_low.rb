require_relative 'wallet'
require 'colorize'

class HighLow

  def start_game(wallet_amount)
    @wallet_amount = wallet_amount
    puts "Enter your bet:"
    @bet = gets.to_f
    draw_card
  end

  def lose_bet(bet)
    puts "Your bet was: $#{@bet.to_f}"
    @new_balance = @wallet_amount - @bet.to_f
    puts "Your updated balance is: $#{@new_balance}"
  end

  def win_bet(bet)
    puts "Your bet was: #{@bet.to_f}"
    @new_balance = (@bet.to_f * 2) + @wallet_amount
    puts "Your updated balance is: $#{@new_balance}"
  end


  def draw_card
     @first_card_results = rand(1..13)
    #  puts String.colors   
     puts     
     puts "First card is: #{@first_card_results.to_s.colorize(:green)}"
     puts 
     puts "Is the next [h]igher or [l]ower?"
     @response = gets.to_s

    @second_card_results = rand(1..13)
    if @first_card_results < @second_card_results && @response == 'l'
      puts
      puts "Second card is #{@second_card_results.to_s.colorize(:red)}"
      puts
      puts "You lose!"
      lose_bet(@bet)
    elsif @first_card_results < @second_card_results && @response == 'h'
      puts
      puts "Second card is #{@second_card_results.to_s.colorize(:green)}"
      puts
      puts "You WIN!" 
      win_bet(@bet)
    elsif @first_card_results > @second_card_results && @response == 'h'
      puts
      puts "Second card is #{@second_card_results.to_s.colorize(:red)}"
      puts
      puts "You lose!"
      lose_bet(@bet)
    else @first_card_results > @second_card_results && @response == 'l'
      puts
      puts "Second card is #{@second_card_results.to_s.colorize(:green)}"
      puts
      puts "You win!"
      win_bet(@bet)
    end 
  end

end