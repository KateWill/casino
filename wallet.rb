require_relative 'slots'

class Wallet
  attr_accessor :balance

  def initialize(balance)
    puts balance
    @balance = balance.to_f
  end

  def display_balance
    puts @balance.to_f
  end

  def lose_bet
    @new_balance = @balance - @bet.to_f
    puts @new_balance.to_f
  end

  def win_bet
    @new_balance = @balance * 2
    puts @new_balance.to_f
  end

end