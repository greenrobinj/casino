require 'pry'
require 'colorize'
require_relative 'wallet'

class Slots
    attr_accessor :name, :age, :money

    def intialize(person)
        @person = person
        puts @person.name
        puts @person.money -2

def welcome
    puts "Welcome to Super Fun Slots!"
    puts "Try your luck!"
    puts "Press ENTER to pull slot machine"
    puts gets.strip
    #puts "What would you like to bet? "
    #bet = gets.strip.to_i
    #puts "You have bet $#{bet}"
    #casino(wallet)
    #wallet = wallet - bet
    pull
end



def pull
    image = ["cherry", "bar", "diamond", "dollar", "lemon", "orange"]
    @result1 = image.sample
    @result2 = image.sample
    @result3 = image.sample
    puts "********************************************"
    puts
    puts "#{@result1}      #{@result2}        #{@result3}"
    puts
    puts "********************************************"
    win
end
    

def win
        # winner = (@result1 == @result2) && (@result2 == @result3)
        # winner = (@result1 == @result2) && (@result2 == @result3)
        # if winner == true
        if @result1 == @result2 && @result2 == @result3
        print `say "Congratulations you have won 5!"`
        puts "Congratulations you have won 5!"
        #Wallet.increase(wallet)
        #@wallet = wallet

        # push = (@result1 == @result2) || (@result2 == @result3) || (@result1 == @result3)
        # push = (@result1 == @result2) || (@result2 == @result3) || (@result1 == @result3)
        # if push == true
        elsif @result1 == @result2 || @result2 == @result3 || @result1 == @result3
        print `say "So close but at least you got your money back!"`
        puts "So close but at least you got your money back!"
    
        else
        print `say "You lost this round & your bet!"`
        #Wallet.decrease(wallet)
        #@money = wallet
        end
    
end    
welcome

