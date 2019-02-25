require_relative 'slots'

class Wallet
  attr_accessor :balance

  def initialize(balance, update_amount)
    @balance = balance.to_f
    @bet = update_amount.to_f
    puts "Your current balance is: $#{@balance}"
  end

  def display_balance
    puts @balance.to_f
  end


end