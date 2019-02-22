require_relative 'wallet'

class HighLow

  def start_game
    @wallet = Wallet.new(100.00)
    puts "Enter your bet:"
    @bet = gets.to_f
    draw_card
  end

  def draw_card
     @first_card_results = rand(1..13)

     puts "First card is:"
     puts @first_card_results
     puts "Is the next [h]igher or [l]ower?"
     @response = gets.to_s

    @second_card_results = rand(1..13)
    if @first_card_results < @second_card_results && @response == 'l'
      puts "Second card is #{@second_card_results}"
      puts "You lose!"
      @wallet.lose_bet
    elsif @first_card_results < @second_card_results && @response == 'h'
      puts "Second card is #{@second_card_results}"
      puts "You WIN!" 
      @wallet.win_bet
    elsif @first_card_results > @second_card_results && @response == 'h'
      puts "Second card is #{@second_card_results}"
      puts "You lose!"
      @wallet.lose_bet
    else @first_card_results > @second_card_results && @response == 'l'
      puts "Second card is #{@second_card_results}"
      puts "You win!"
      @wallet.win_bet
    end 
    

  end




end