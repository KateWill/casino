# Basic Objectives:

# Start game player has a name and an initial bankroll
# Player can go to different games via menu
# Slots
# High / Low
# Player places bet and wins / loses (hint: rand)
# Player's bankroll goes up and down with wins and losses
# Bonus Objectives:

# Ability to move to and from games
# Find a gem that allows you to play sound and find casino sounds that will play on each game change/events
# Gem discovery: go to rubygems.org and find more gems that you want to implement in your project and use
# The player should have a Wallet and the Wallet should be its own class with remove and add methods (OOP)
# Find ASCII Art and put it into your games/menus to make it more fun for the end user
# Ability to switch players (player menu, bankroll information)
# Player's bankroll persists while moving from game to game
# Player's bankroll persists if you switch to different players
# Random events occur when changing games that can increase or decrease player's bankroll
# Roulette
# Craps
# Build a card deck 
# Card games (Blackjack, Poker, Casino War, etc...)
# Any other Casino game you can think of
# Create your own game
# NOTES:

# I highly recommend that once you complete a game in the casino go back through all of the code as a group and refactor it. Look for any code that is not DRY (Don't repeat yourself) and move it into common methods. Look for things that can be used in variables etc... If you have any questions about refactoring please find any of the TA's or me and we can assist you with it!
require_relative 'player'
require_relative 'wallet'
require_relative 'menu'

@player = Player.new('Kate', 100)
@player.greet
#  p @player
# puts @player.wallet_amount





