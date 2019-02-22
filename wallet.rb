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
    @balance = @balance - @bet.to_f
    puts @balance.to_f
  end

  def win_bet
    @balance = @balance * 2
    puts @balance.to_f
  end

end