require_relative 'wallet'
require_relative 'dice'
require_relative 'yahtzee_score'
require 'pry'
require 'colorize'

class Yahtzee
  attr_accessor :name, :age, :money, :main
  attr_accessor :roll, :singleroll, :show_dice
  attr_accessor :playeroll
  attr_accessor :score
  
  
    def initialize(person, menu) #put menu in here, but it wasn't working
      @person = person
      @menu = menu
      @score = Score.new
      @total_log = []
      @scorecard = []   #Score.new(num, points)
      @total = 0
      game
    end
  
    def ones
        val = @current_log_mod.reject{|d| d != 1}.inject(0) {|sum, val| sum + val}
        puts "Would you like to use #{val} as your score for ones? [Y/N]"
        selection = gets.strip.downcase
        case selection
        when "y"
          @score.scorecard << Playeroll.new("Ones:", val)
          @score.scorecard.last do |item| #previously .each
            puts "The #{item.num} has a score of #{item.points}"
          end
        else
          game
        end
      game
    end 
  
    def twos
      val = @current_log_mod.reject{|d| d != 2}.inject(0) {|sum, val| sum + val}
      puts "Would you like to use #{val} as your score for twos? [Y/N]"
      selection = gets.strip.downcase
      if selection == "y"
        @score.scorecard << Playeroll.new("Twos:", val)
        @score.scorecard.last do |item|
          puts "The #{item.num} has a score of #{item.points}"
        end
      else selection == "n"
        game
      end
      game
    end
  
    def threes
      val = @current_log_mod.reject{|d| d != 3}.inject(0) {|sum, val| sum + val}
      puts "Would you like to use #{val} as your score for threes? [Y/N]"
      selection = gets.strip.downcase
       if selection == "y"
        @score.scorecard << Playeroll.new("Threes:", val)
        @score.scorecard.last do |item|
          puts "The #{item.num} has a score of #{item.points}"
        end
       else selection == "n"
        game
       end
      game
    end
  
    def fours
      val = @current_log_mod.reject{|d| d != 4}.inject(0) {|sum, val| sum + val}
      puts "Would you like to use #{val} as your score for fours? [Y/N]"
      selection = gets.strip.downcase
       if selection == "y"
        @score.scorecard << Playeroll.new("Fours:", val)
        @score.scorecard.last do |item| 
          puts "The #{item.num} has a score of #{item.points}"
        end
       else selection == "n"
        game
       end
       game
    end
  
    def fives
      val = @current_log_mod.reject{|d| d != 5}.inject(0) {|sum, val| sum + val}
      puts "Would you like to use #{val} as your score for fives? [Y/N]"
      selection = gets.strip.downcase
       if selection == "y"
        @score.scorecard << Playeroll.new("Fives:", val)
        @score.scorecard.last do |item|
          puts "The #{item.num} has a score of #{item.points}"
        end
      else selection == "n"
        game
       end
      game
    end
  
    def sixes
      val = @current_log_mod.reject{|d| d != 6}.inject(0) {|sum, val| sum + val}
      puts "Would you like to use #{val} as your score for sixes? [Y/N]"
      selection = gets.strip.downcase
       if selection == "y"
        @score.scorecard << Playeroll.new("Sixes:", val)
        @score.scorecard.last do |item|
          puts "The #{item.num} has a score of #{item.points}"
        end
       else selection == "n"
        game
       end
      game
    end
  
    def view_card
     puts "#{@person.name}, here is your card:"
        @score.scorecard.each do |item|
          puts "Your #{item.num} = #{item.points}"
          # binding.pry
          @total += item.points
          # binding.pry
        end
        puts "Your running total: #{@total}"
        # @score.scorecard.each do |item|
        #   # binding.pry
        #   tot_arr = []
        #   tot_arr << item.points
        #   # binding.pry
        #   tot = tot_arr.sum 
        #   puts "total: #{tot}"
        #   binding.pry
        # end
      game
    end

    # def view_card
    #   puts "#{@person.name}, here is your card:"
    #      @score.scorecard.each do |item|
    #        puts "Your #{item.num} = #{item.points}."
    #      end
    #      @score.scorecard do |item|
    #        item.num += total
    #        puts "total: #{total}"
    #        binding.pry #Why is this not being reached? 
    #      end
    #    game
    #  end
  
    def game
      puts "\n"
      puts "Welcome to Math Yahtzee #{@person.name}!!!!".colorize(:red)
      puts "Press 1 to roll".colorize(:yellow)
      puts "Press 2 to see your scorecard".colorize(:red)
      puts "Press 3 to go back to the casino"
      puts "Any other key will ESC"
      input = gets.strip.to_i
      if input == 1
        current_roll = Dice.new()
        # puts current_roll.show_dice this is not working with the numbers!
        @total_log << current_roll.roll 
        num = @total_log.length
        @current_log_mod =  @total_log[num - 1]
        print @current_log_mod
        select_dice
      elsif input == 2
        view_card
      elsif input == 3
        @menu.casino
        # puts "Sorry, you must be bored. You should probably leave"
        # exit
      else
        exit
      end
    end
  
    def select_dice
      puts "What would you like to fill?"
      selection = gets.strip.to_i
      case selection 
      when 1
        ones
      when 2
        twos
      when 3
        threes
      when 4
        fours
      when 5
        fives
      when 6
        sixes
      else
        game
      end
    end
  end
 
      # def keep_score
    #   puts "Your score card is:"
    #   # puts "\t1) Ones: #{@one_sum}"
    #   #two  = sum
    #   #three = sum
    #   #four = sum
    #   #five = sum
    #   #six = sum
  
    #   #bonus - if over 63 add 35
  
    #   #three of a kind - add total
    #   #four of a kind - add total
    #   #full house - score of 25
    #   #Small straight: 4 dice - 30 pts
    #   #large straight: 5 dice - 40 pts
    #   #yahtzee (bonus yahtzee) - 1