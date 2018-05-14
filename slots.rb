require 'pry'
require 'colorize'
require_relative 'wallet'

class Slots
    attr_accessor :name, :age, :money

    def initialize(person)
        @person = person
        puts @person.name
        puts @person.money
    welcome
end


def welcome
    puts "Welcome to Super Fun Slots!".colorize(:cyan)
    puts "Try your luck!".colorize(:magenta)
    puts "What would you like to bet? ".colorize(:magenta)
    bet = gets.input.i
    puts "You have bet $#{bet}"
    casino(wallet)
    wallet = wallet - bet
    pull
end

def pull
    puts "Try your luck!"
    puts "Press ENTER to pull slot machine"
    puts gets.strip
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
        if @result1 == @result2 && @result2 == @result3
        print `say "Congratulations you have doubled your bet"`
        puts "Congratulations you have doubled your bet!"
        puts @person.name
        puts @person.money+5
        puts "\tPress 1 to play again" 
        puts "\tPress 2 to return to main menu"
        input = gets.strip.to_i
            if input == 1 
                pull
            if input == 2
                puts "??????????"
            else puts "I don't understand"    
        end
    end


       
        elsif @result1 == @result2 || @result2 == @result3 || @result1 == @result3
        print `say "So close but at least you got your money back!"`
        puts "So close but at least you got your money back!"
        puts @person.name
        puts @person.money
        puts "\tPress 1 to play again" 
        puts "\tPress 2 to return to main menu"
        input = gets.strip.to_i
            if input == 1 
                pull
            if input == 2
                puts "????????"
            else puts "I don't understand" 
        end
    end


        else
        print `say "You lost this round & your bet!"`
        puts
        puts @person.name
        puts @person.money-5
        puts "\tPress 1 to play again" 
        puts "\tPress 2 to return to main menu"
        input = gets.strip.to_i
            if input == 1 
                pull
            if input == 2
                puts "?????????"
         else puts "I don't understand" 
        end
    end
end
end
end
