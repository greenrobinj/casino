# require_relative 'dice'
require_relative 'wallet'
require 'pry'
require 'colorize'

class Yahtzee
attr_accessor :name, :age, :money
  

def initialize(person)
  @person = person #then we can use the instance variable throughout the sheet
end 


  # puts @person.name
  # puts @person.money - 1
  
end

# def game(wallet)
  
#   puts "@person.money"
#   puts "@person.age"
# end

end


#aces = sum
#two  = sum
#three = sum
#four = sum
#five = sum
#six = sum

#bonus - if over 63 add 35

#three of a kind - add total
#four of a kind - add total
#full house - score of 25
#Small straight: 4 dice - 30 pts
#large straight: 5 dice - 40 pts
#yahtzee (bonus yahtzee) - 100 pts