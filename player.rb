require_relative 'wallet'

class Player
  attr_accessor :name 

  def initialize(name)
    @name = name
  end

  def place_bet
    puts "Put your money"
    puts 
  end

end