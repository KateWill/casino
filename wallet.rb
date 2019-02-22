class Wallet
  attr_accessor :balance

  def initialize(balance)
    @balance = balance
  end

  def display_balance
    puts @balance
  end
end