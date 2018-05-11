require 'pry'
require 'colorize'
require_relative 'wallet'

#casino(wallet)
def welcome
    puts "Welcome to Super Fun Slots!"
    puts "Try your luck!"
    puts "What would you like to bet? "
    bet = gets.input.i
    puts "You have bet $#{bet}"
    casino(wallet)
    wallet = wallet - bet
    pull
end



#print `say winner`
#print `clear`



def pull
    image = ["cherry", "bar", "diamond", "dollar", "lemon", "orange"]
    result1 = image.sample
    result2 = image.sample
    result3 = image.sample
    puts "#{result1}      #{result2}        #{result3}"
    puts `say "Congratulations you have won!!"`
    end
    

def win (column1, column2, column3)
     if column1 = column2 && column2 = column3
        win = 3
        puts `say "Congratulations you have won!!"`
    
     elsif column1 = column2 || column2 = column3
        win = 2
        puts `say "Congratulations you have won!!"`
    
     else 
        win = 0
        puts `say "Sorry you are not a winner"`
    
    winnings = bet * win(result1, result2, result3)

    end
end    
welcome

